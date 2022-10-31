#-------------------------------------------------------#
# Created by: Michael Kuczynski
# Created on: June 9th, 2022
#
# Description: Contains functions to obtain joint space
#               segmentation masks using the standard
#               IPL implementation (translated to Python).
#-------------------------------------------------------#
import os
import datetime
import numpy as np
import SimpleITK as sitk

from dt_morphometry import calc_mean_thickness


# Set standard global variables used in IPL script
# These values are used for erosion/dilation
MISC0 = 45 
MISC1 = 26 
MISC2 = 27
MISC3 = 13 
MISC4 = 35 
CALC = MISC2 + 8


def jsw_pad(joint_seg_image):
    """
    Pads a binary segmentation joint image with 0 values. The amount of padding
    is taken from the IPL JSW script (uses MISC2).

    Parameters
    ----------
    joint_seg_path : string

    Returns
    -------
    pad_image : SimpleITK.Image
    """
    # Add border space to make sure that outside space is bigger than inside.
    # Set the mask's value to 60
    # Heuristics, "ipl_misc1_2 is used again
    # /bounding_box_cut
    #    -input     S4_jnt
    #    -output    S4_border
    #    -z_only    true
    #    -border    "ipl_misc1_2 "ipl_misc1_2 0
    pad_image = sitk.ConstantPad(joint_seg_image, [MISC2, MISC2, 0], [MISC2, MISC2, 0], 0)
    pad_image = sitk.BinaryThreshold(pad_image, 1, 127, 60, 0)

    return pad_image


def jsw_dilate(image):
    """
    Dilates a binary segmented image with kernel = MISC2 x MISC2 x MISC2. 
    A ball was used as the structural unit for image dilation. This corresponds
    to the IPL metric previously used (i.e., Euclidian distance map). Connected
    components is then run to remove any islands, and then a binary hole 
    filling filter is run to close any holes in the dilated binary image.

    Parameters
    ----------
    image : SimpleITK.Image

    output_path : string

    Returns
    -------
    filled_holes : SimpleITK.Image
    """
    # /dilation
    #  -input                     S4_border
    #  -output                    S4_dilate
    #  -dilate_distance           "ipl_misc1_2
    #  -continuous_at_boundary    0 0 0
    #  -use_previous_margin       false
    #  -metric                    1         !1  = euclidean distance map (SF method)
    image = sitk.BinaryThreshold(image, 1, 127, 60, 0)
    dilated_image = sitk.BinaryDilate(image, [MISC2, MISC2, MISC2], sitk.sitkBall, 0, 60)

    # Run connected components, sort the components by size, then take only the largest component
    connected_image = sitk.ConnectedComponent(dilated_image, True)

    # Sort the components by size
    relabel_image = sitk.RelabelComponent(connected_image)

    # Take only the largest component, set it's value to 127
    first_component = sitk.BinaryThreshold(relabel_image, 1, 1, 127, 0)
    filled_holes = sitk.BinaryFillhole(first_component, True, 127)
    
    return filled_holes


def jsw_erode(dilated_image, image):
    """
    Performs morphological erosion on a binary segmentation by 
    kernel = CALC x CALC x CALC. Erosion is performed using the ball structural
    unit which is equivalent to the IPL Euclidean distance map metric. 
    Connected components is then run to remove any islands and the joint space
    mask is returned.

    Parameters
    ----------
    dilated_image : SimpleITK.Image

    image : SimpleITK.Image

    output_path : string

    Returns
    -------
    first_component : SimpleITK.Image
    """
    # Erode the image, set the eroded mask's value to 30
    eroded_image = sitk.BinaryErode(dilated_image, [CALC, CALC, CALC], sitk.sitkBall, 0, 127)
    eroded_image = sitk.BinaryThreshold(eroded_image, 127, 127, 30, 0)

    # Add the eroded image (value = 30) and joint image (value = 60) together. 
    # Then threshold out JS image (value = 30)
    add_image = sitk.Add(eroded_image, image)
    add_image = sitk.BinaryThreshold(add_image, 30, 30, 127, 0)

    connected_image = sitk.ConnectedComponent(add_image, False)
    relabel_image = sitk.RelabelComponent(connected_image)
    first_component = sitk.BinaryThreshold(relabel_image, 1, 1, 1, 0)

    return eroded_image, first_component


def jsw_parameters(js_mask, output_path, filename, voxel_size=0.0607):
    """
    Computes the following JSW parameters:
        -Joint Space Volume (JSV)
        -Joint Space Width Mean (JSW.Mean)
        -Joint Space Width Standard Deviation (JSW.Std)
        -Joint Space Width Minimum (JSW.Min)
        -Joint Space Width Maximum (JSW.Max)
        -Joint Space Width Asymmetry (JSW.AS = JSW.Max/JSW.Min)
    
    JSW values are computed using a sphere filling distance transform approach
    as defined in:
        T. Hildebrand, P. Rüegsegger. A new method for the model-independent assessment 
        of thickness in three-dimensional images. Journal of Microscopy. 1997.

    Parameters
    ----------
    js_mask : SimpleITK.Image

    output_path : string

    filename : string
    """
    # Distance transform + JSW parameters
    mask = sitk.GetArrayFromImage(js_mask)

    # Needs to be fixed for masks with JS minimum < 1 voxel
    # For now, set the minimum JSW value to twice the voel size (0.1214)
    result = calc_mean_thickness(mask, voxel_size, voxel_size*2)
    mean_thickness = result[0]
    mean_thickness_std = result[1]
    min_thickness = result[2]
    max_thickness = result[3]
    thickness_map = result[4]

    sitk_image = sitk.GetImageFromArray(thickness_map)
    sitk.WriteImage(sitk_image, os.path.join(output_path, 'IPL_DT.mha'))

    # Get the volume of the JS
    shape_stats = sitk.LabelShapeStatisticsImageFilter()
    shape_stats.ComputeOrientedBoundingBoxOn()
    shape_stats.Execute(js_mask)

    stats_list = [ (shape_stats.GetPhysicalSize(i),
                shape_stats.GetNumberOfPixels(i),
                ) for i in shape_stats.GetLabels()]

    jsv = stats_list[0][0]
    pixel_count = stats_list[0][1]

    jsw_output_header = np.array([['Filename', 'Process Date', \
                                'JSV (mm3)', 'JSW.Mean (mm)', 'JSW.Mean_STD (mm)', \
                                'JSW.Min (mm)', 'JSW.Max (mm)', 'JSW.AS']], dtype=object)

    jsw_params = np.array([[filename, datetime.datetime.now(), \
                            jsv, mean_thickness, mean_thickness_std, \
                            min_thickness, max_thickness, min_thickness/max_thickness]], dtype=object)

    csv_data = np.vstack([jsw_output_header, jsw_params])
    completed_string = csv_data.astype(str)
    completed_string[1:,:] = csv_data[1:,:].astype('S7')

    js_output = os.path.join(output_path, 'JSW_OUTPUT.csv')
    np.savetxt(js_output, completed_string.astype(str), delimiter=',', fmt='%s')
