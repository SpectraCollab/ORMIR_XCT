# -------------------------------------------------------#
# Created by: Michael Kuczynski
# Created on: June 9th, 2022
#
# Description: Reimplementation of the IPL JSW Analysis
#               as part of the ORMIR 2022 workshop.
#
# Overview of JSW Steps:
#   1. Image padding (ignored as not needed in Python)
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
# -------------------------------------------------------#
import os
import argparse
import SimpleITK as sitk

from jsw_morphometry import jsw_pad, jsw_dilate, jsw_erode, jsw_parameters


def main():
    # -------Inputs:-------#
    parser = argparse.ArgumentParser(
        prog="jsw_main",
        description="Reimplementation of the IPL joint space width analysis.",
    )
    parser.add_argument("joint_seg", type=str, help="Joint segmentation image")
    args = parser.parse_args()

    joint_seg_path = args.joint_seg
    filename = os.path.basename(joint_seg_path)
    img = sitk.ReadImage(joint_seg_path, sitk.sitkUInt8)

    # -------Outputs:-------#
    # Set the output path (same as input image path)
    output_path = os.path.dirname(joint_seg_path)

    # pad_image = jsw_pad(img)
    # sitk.WriteImage(pad_image, os.path.join(output_path, 'PAD_IMG.mha' ))

    dilated_image = jsw_dilate(img)
    sitk.WriteImage(dilated_image, os.path.join(output_path, "DILATE.mha"))

    eroded_image, js_mask = jsw_erode(dilated_image, img, output_path)
    sitk.WriteImage(eroded_image, os.path.join(output_path, "ERODE.mha"))
    sitk.WriteImage(js_mask, os.path.join(output_path, "JS_MASK.mha"))

    jsw_parameters(js_mask, output_path, filename)


if __name__ == "__main__":
    main()
