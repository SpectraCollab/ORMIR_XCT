#-----------------------------------------------------
# ipl_seg.py
#
# Created by:   Michael Kuczynski
# Created on:   June 29, 2022
#
# Description: Binarize an input image following the standard
#               segmentation protocol performed in IPL. 
#
# Notes:
#   1. Gaussian smoothing is done in IPL with sigma = 0.5
#       and support = 1. In ITK, this translates to using
#       the SmoothingRecursiveGaussian filter with
#       sigma = 0.5 * voxel size = 0.5 * 0.0606964.
#   2. The output of the Guassian filter will be a float
#       image so we may need to cast to a different type
#       depending on what image you want to write to.
#   3. The binarization is done using the same thresholds
#       set in IPL, but we need to know the image units
#       prior to binarization (default is set to BMD units).
#
# Usage:
#   python ipl_seg.py input_image.nii input_mask.nii
#   python ipl_seg.py input_image.nii input_mask.nii HU
#-----------------------------------------------------
import sys
import argparse
import SimpleITK as sitk

from ..util.scanco_rescale import *

# Default threshold values used in IPL
threshold_dict = {
    'HU_Lower' : 1170,
    'HU_Upper' : 10000,
    'BMD_Lower' : 446.8,
    'BMD_Upper' : 3000.0,
    'Native_Lower' : 4259,
    'Native_Upper' : 32767,
    'LinAtt_Lower' : 0.52,
    'LinAtt_Upper' : 4.00,
    'Per1000_Lower' : 130,
    'Per1000_Upper' : 1000
}

def ipl_segmentation(input_image_path, image_units):
    """
    Check the image units and get the correct thresholds.

    Parameters
    ----------
    input_image_path : string

    image_units : string

    Returns
    -------
    seg : SimpleITK.Image
    """
    if image_units == 'bmd':
        lower_threshold = threshold_dict.get('BMD_Lower')
        upper_threshold = threshold_dict.get('BMD_Upper')

    elif image_units == 'scanco':
        lower_threshold = threshold_dict.get('Native_Lower')
        upper_threshold = threshold_dict.get('Native_Upper')

    elif image_units == 'attenuation':
        lower_threshold = threshold_dict.get('LinAtt_Lower')
        upper_threshold = threshold_dict.get('LinAtt_Upper')

    elif image_units == 'hu':
        lower_threshold = threshold_dict.get('HU_Lower')
        upper_threshold = threshold_dict.get('HU_Upper')

    elif image_units == 'per1000':
        lower_threshold = threshold_dict.get('Per1000_Lower')
        upper_threshold = threshold_dict.get('Per1000_Upper')
    
    else:
        print('ERROR: Invalid image units provided. Only BMD, SCANCO, ATTENUATION, HU, or PER1000 are accepted.')
        sys.exit(1)

    # Read in image as a 32-bit float so that we can rescale correctly if needed
    input_image = sitk.ReadImage(input_image_path, sitk.sitkFloat32)

    # Gaussian smoothing
    smooth = sitk.SmoothingRecursiveGaussian(input_image, 0.5*0.0606964)

    # Segmentation
    seg = sitk.BinaryThreshold(smooth, lower_threshold, upper_threshold, 127, 0)

    return seg


if __name__ == '__main__':
    # Parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument( 'input_image', type=str, help='The input image (path + filename)' )
    parser.add_argument( 'output_image', type=str, help='The output image (path + filename)' )
    parser.add_argument( 'image_units', type=str, nargs='?', default='BMD', help='The image voxel units (options: BMD, SCANCO, ATTENUATION, HU, PER1000)' )
    args = parser.parse_args()

    input_image_path = args.input_image
    output_image_path = args.output_image
    image_units = (args.image_units).lower()

    seg = ipl_segmentation(input_image_path, image_units)
    
    sitk.WriteImage(seg, output_image_path)
