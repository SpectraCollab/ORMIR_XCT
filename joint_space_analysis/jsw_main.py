#-------------------------------------------------------#
# Created by: Michael Kuczynski
# Created on: June 9th, 2022
#
# Description: Reimplementation of the IPL JSW Analysis
#               as part of the JCW|MSK workshop.
#
# Overview of JSW Steps:
#   1. Image padding
#   2. Dilation
#   3. Erosion
#   4. Threshold out JS Mask
#   5. DT sphere filling
#   6. Compute JSW parameters
#
# Usage: python jsw_main.py JOINT_SEG.nii
#
# Inputs:
#   1. Joint segmentation image (binary)
#
# Outputs:
#   1. Joint Space Mask Image (MHA/NIFTI)
#   2. Joint Space Output (text file)
#-------------------------------------------------------#
import os
import time
import argparse

import SimpleITK as sitk

from jsw_morphometry import jsw_pad, jsw_dilate, jsw_erode, jsw_parameters
from segmentation_evaluation import calculate_dice_and_jaccard
from ..util.file_reader import file_reader

if __name__ == '__main__':
    start_time = time.time()

    #-------Inputs:-------#
    parser = argparse.ArgumentParser()
    parser.add_argument( 'joint_seg', type=str, help='Joint segmentation image' )
    parser.add_argument( 'joint_seg_IPL', type=str, help='Joint segmentation image from IPL' )
    args = parser.parse_args()

    joint_seg_path = args.joint_seg
    joint_seg_path_IPL = args.joint_seg_IPL
    filename = os.path.basename(joint_seg_path)

    #-------Outputs:-------#
    # Set the output path (same as input image path)
    output_path = os.path.dirname(joint_seg_path)

    pad_image     = jsw_pad(joint_seg_path)
    dilated_image = jsw_dilate(pad_image, output_path)
    js_mask       = jsw_erode(dilated_image, pad_image, output_path)
    jsw_parameters(js_mask, output_path, filename)

    ipl_image = file_reader(joint_seg_path_IPL)
    python_image = file_reader(joint_seg_path)
    dice, jaccard = calculate_dice_and_jaccard(sitk.GetArrayFromImage(ipl_image), sitk.GetArrayFromImage(python_image))
    print(dice)
    print(jaccard)

    print('--- %s seconds ---' % (time.time() - start_time))