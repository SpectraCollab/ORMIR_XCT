import os
import sys
import argparse
import datetime
import numpy as np
import SimpleITK as sitk

from csv import writer
from ormir_xct.autocontour.autocontour import autocontour
from ormir_xct.util.scanco_rescale import *


if __name__ == "__main__":
    # Parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("input_path", type=str, help="The input image directory")
    args = parser.parse_args()

    input_path = args.input_path

    # Loop through all files in the directory
    for filename in os.listdir(input_path):
        if "MCP2.nii" in filename or "MCP3.nii" in filename:
            print("Running auto contour for: " + str(filename))
            gray_image_path = os.path.join(input_path, filename)

            try:
                gray_image = sitk.ReadImage(gray_image_path, sitk.sitkFloat32)
            except:
                print("Error: Can't open image: " + gray_image_path)
                continue

            dst_mask, prx_mask, mask = autocontour(
                gray_image, 0.2396, 1613.943971, -392.247009
            )

            dst_mask_path = os.path.join(input_path, filename[:-4] + "_DST_MASK_PY.nii")
            prx_mask_path = os.path.join(input_path, filename[:-4] + "_PRX_MASK_PY.nii")
            mask_path = os.path.join(input_path, filename[:-4] + "_MASK_PY.nii")

            print(dst_mask_path)
            sitk.WriteImage(dst_mask, dst_mask_path)
            sitk.WriteImage(prx_mask, prx_mask_path)
            sitk.WriteImage(mask, mask_path)
