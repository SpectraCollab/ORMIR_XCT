import os
import sys
import argparse
import datetime
import numpy as np
import SimpleITK as sitk

from csv import writer
from bmd_masked import bmd_masked
from ormir_xct.util.scanco_rescale import *


def resample_to_image(image, ref_image):
    resample_filter = sitk.ResampleImageFilter()
    resample_filter.SetReferenceImage(ref_image)
    resample_filter.SetInterpolator(sitk.sitkNearestNeighbor)
    resample_filter.SetOutputPixelType(image.GetPixelID())
    resampled_image = resample_filter.Execute(image)
    return resampled_image


if __name__ == "__main__":
    # Parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("input_path", type=str, help="The input image directory")
    args = parser.parse_args()

    input_path = args.input_path
    output_csv = os.path.join(input_path, "bmd.csv")

    bmd_param_stack = [
        "Filename",
        "Process Date",
        "MCP2 DST Mean BMD (mgHA/ccm)",
        "MCP2 DST Std BMD (mgHA/ccm)",
        "MCP2 PRX Mean BMD (mgHA/ccm)",
        "MCP2 PRX Std BMD (mgHA/ccm)",
        "MCP3 DST Mean BMD (mgHA/ccm)",
        "MCP3 DST Std BMD (mgHA/ccm)",
        "MCP3 PRX Mean BMD (mgHA/ccm)",
        "MCP3 PRX Std BMD (mgHA/ccm)",
    ]

    with open(output_csv, "a") as f_object:
        writer_object = writer(f_object)
        writer_object.writerow(bmd_param_stack)
        f_object.close()

    # Loop through all files in the directory
    for filename in os.listdir(input_path):
        # Get study ID number
        bmd_arr_loop = [filename[0:9], datetime.datetime.now()]

        name, extension = os.path.splitext(filename)

        if (filename[0:9] + "_0M_MCP2.nii") != filename:
            continue
        else:
            print("Calculating BMD for: " + str(filename))
            gray_image_path = os.path.join(input_path, filename)
            dst_mask_path = os.path.join(
                input_path, filename[0:12] + "_MCP2_DST_MASK.nii"
            )
            prx_mask_path = os.path.join(
                input_path, filename[0:12] + "_MCP2_PRX_MASK.nii"
            )

            gray_image = sitk.ReadImage(gray_image_path, sitk.sitkFloat32)
            dst_mask = sitk.ReadImage(dst_mask_path, sitk.sitkUInt8)
            prx_mask = sitk.ReadImage(prx_mask_path, sitk.sitkUInt8)

            # Resample masks
            print("\tResampling masks...")
            dst_mask_resampled_path = os.path.join(
                input_path, filename[0:12] + "_MCP2_DST_MASK_RESAMPLED.nii"
            )
            dst_mask = resample_to_image(dst_mask, gray_image)
            sitk.WriteImage(dst_mask, dst_mask_resampled_path)
            prx_mask_resampled_path = os.path.join(
                input_path, filename[0:12] + "_MCP2_PRX_MASK_RESAMPLED.nii"
            )
            prx_mask = resample_to_image(prx_mask, gray_image)
            sitk.WriteImage(prx_mask, prx_mask_resampled_path)

            print("\tComputing bmd...")
            dst_mean, dst_std = bmd_masked(
                gray_image,
                dst_mask,
                "hu",
                8192,
                0.23960,
                1613.943971,
                -392.247009,
            )
            prx_mean, prx_std = bmd_masked(
                gray_image,
                prx_mask,
                "hu",
                8192,
                0.23960,
                1613.943971,
                -392.247009,
            )

            bmd_arr_loop.append(dst_mean)
            bmd_arr_loop.append(dst_std)
            bmd_arr_loop.append(prx_mean)
            bmd_arr_loop.append(prx_std)

            filename = filename[0:12] + "_MCP3.nii"
            print("Calculating BMD for: " + str(filename))
            gray_image_path = os.path.join(input_path, filename)
            dst_mask_path = os.path.join(
                input_path, filename[0:12] + "_MCP3_DST_MASK.nii"
            )
            prx_mask_path = os.path.join(
                input_path, filename[0:12] + "_MCP3_PRX_MASK.nii"
            )

            gray_image = sitk.ReadImage(gray_image_path, sitk.sitkFloat32)
            dst_mask = sitk.ReadImage(dst_mask_path, sitk.sitkUInt8)
            prx_mask = sitk.ReadImage(prx_mask_path, sitk.sitkUInt8)

            # Resample masks
            print("\tResampling masks...")
            dst_mask_resampled_path = os.path.join(
                input_path, filename[0:12] + "_MCP3_DST_MASK_RESAMPLED.nii"
            )
            dst_mask = resample_to_image(dst_mask, gray_image)
            sitk.WriteImage(dst_mask, dst_mask_resampled_path)
            prx_mask_resampled_path = os.path.join(
                input_path, filename[0:12] + "_MCP3_PRX_MASK_RESAMPLED.nii"
            )
            prx_mask = resample_to_image(prx_mask, gray_image)
            sitk.WriteImage(prx_mask, prx_mask_resampled_path)

            print("\tComputing bmd...")
            dst_mean, dst_std = bmd_masked(
                gray_image,
                dst_mask,
                "hu",
                8192,
                0.23960,
                1613.943971,
                -392.247009,
            )
            prx_mean, prx_std = bmd_masked(
                gray_image,
                prx_mask,
                "hu",
                8192,
                0.23960,
                1613.943971,
                -392.247009,
            )

            bmd_arr_loop.append(dst_mean)
            bmd_arr_loop.append(dst_std)
            bmd_arr_loop.append(prx_mean)
            bmd_arr_loop.append(prx_std)

            with open(output_csv, "a") as f_object:
                writer_object = writer(f_object)
                writer_object.writerow(bmd_arr_loop)
                f_object.close()
