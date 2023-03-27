import os
import sys
import argparse
import datetime
import numpy as np
import SimpleITK as sitk

from csv import writer
from ormir_xct.segmentation.ipl_seg import ipl_seg


if __name__ == "__main__":
    # Parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("input_path", type=str, help="The input image directory")
    args = parser.parse_args()

    input_path = args.input_path

    # Loop through all files in the directory
    for filename in os.listdir(input_path):
        if "MCP2.nii" in filename or "MCP3.nii" in filename:
            print("Running IPL standard segmentation for: " + str(filename))
            gray_image_path = os.path.join(input_path, filename)

            try:
                gray_image = sitk.ReadImage(gray_image_path, sitk.sitkFloat32)
            except:
                print("Error: Can't open image: " + gray_image_path)
                continue

            # Use HU values for the upper/lower threshold
            seg_image = ipl_seg(
                gray_image, 1170, 10000, gray_image.GetSpacing()[2], 0.5
            )

            seg_path = os.path.join(input_path, filename[:-4] + "_SEG_PY.nii")
            sitk.WriteImage(seg_image, seg_path)
