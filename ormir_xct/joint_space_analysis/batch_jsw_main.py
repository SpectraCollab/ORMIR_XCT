"""
Created by: Michael Kuczynski
Created on: Nov. 9th, 2022

Description: Batch JSW analysis script with automated connectivity check.

Overview of JSW Steps:
  1. Image padding (ignored as not needed in Python)
  2. Dilation
  3. Erosion
  4. Threshold out JS Mask
  5. DT sphere filling
  6. Compute JSW parameters

Usage: python jsw_main.py JOINT_SEG.nii
"""

import sys
import os
import time
import datetime
import argparse
import numpy as np
import SimpleITK as sitk

from csv import writer

from ormir_xct.autocontour.autocontour import autocontour
from connected_check import connected_check
from jsw_morphometry import jsw_pad, jsw_dilate, jsw_erode, jsw_parameters

def jsw(mask, name, output_path):
    params = []

    # Get voxel size (assume isotropic voxels)
    voxel_size = mask.GetSpacing()[0]

    # Pad image
    print("\tPadding mask...")
    pad_image = jsw_pad(mask)

    print("\tDilating mask...")
    dilated_image = jsw_dilate(sitk.Cast(pad_image, sitk.sitkUInt8))
    sitk.WriteImage(
        dilated_image, os.path.join(output_path, str(name) + "_DILATE.mha")
    )

    print("\tEroding mask...")
    eroded_image, js_mask, dilated_js_mask = jsw_erode(dilated_image, pad_image)
    sitk.WriteImage(
        eroded_image, os.path.join(output_path, str(name) + "_ERODE.mha")
    )
    sitk.WriteImage(
        js_mask, os.path.join(output_path, str(name) + "_JS_MASK.mha")
    )
    sitk.WriteImage(
        dilated_js_mask,
        os.path.join(output_path, str(name) + "_DILATED_JS_MASK.mha"),
    )

    # Ignore the filename and time saved in the jsw_parameters function
    # Returned array: [jsv, jsw_mean, jsw_mean_sd, jsw_min, jsw_max, jsw_AS]
    print("\tGenerating JS mask and computing JS parameters...")
    dt_img, jsw_params = jsw_parameters(
        pad_image, dilated_js_mask, output_path, name, voxel_size, js_mask
    )
    sitk.WriteImage(
        dt_img, os.path.join(output_path, str(name) + "_DT.mha")
    )

    # Array to save: [jsv, jsw_mean, jsw_mean_sd, jsw_min, connected, jsw_max, jsw_AS]
    params = [
                jsw_params[0][2],
                jsw_params[0][3],
                jsw_params[0][4],
                jsw_params[0][5],
                jsw_params[0][6],
                jsw_params[0][7],
                jsw_params[0][8]
            ]

    return params

if __name__ == "__main__":
    start_time = time.time()

    # -------Inputs:-------#
    parser = argparse.ArgumentParser()
    parser.add_argument("input_path", type=str, help="Input directory")
    args = parser.parse_args()

    input_path = args.input_path
    output_csv = os.path.join(input_path, "jsw.csv")

    jsw_param_arr = [
                "Filename",
                "Process Date",
                "MCP2 JSV (mm3)",
                "MCP2 JSW.Mean (mm)",
                "MCP2 JSW.Mean_STD (mm)",
                "MCP2 JSW.Min (mm)",
                "MCP2 Connectivity Check",
                "MCP2 JSW.Max (mm)",
                "MCP2 JSW.AS",
                "MCP3 JSV (mm3)",
                "MCP3 JSW.Mean (mm)",
                "MCP3 JSW.Mean_STD (mm)",
                "MCP3 JSW.Min (mm)",
                "MCP2 Connectivity Check",
                "MCP3 JSW.Max (mm)",
                "MCP3 JSW.AS"
            ]

    with open(output_csv, 'a') as f_object:
            writer_object = writer(f_object)
            writer_object.writerow(jsw_param_arr)
            f_object.close()

    # Loop through all files in the directory
    for filename in os.listdir(input_path):
        # Get study ID number
        study_ID = filename
        jsw_param_arr_loop = [filename[0:9], datetime.datetime.now()]
            
        name, extension = os.path.splitext(filename)

        if not ("mcp2_joint_mask.nii" in filename.lower()):
            continue
        else:
            print("Calculating JSW parameters for: " + str(filename))

            # Update for grayscale images
            image_path = os.path.join(input_path, filename)
            output_path = input_path

            # Run the autocontour instead of reading in the mask
            mask = sitk.ReadImage(image_path, sitk.sitkUInt8)

            params = jsw(mask, name, output_path)

            jsw_param_arr_loop.append(params[0])
            jsw_param_arr_loop.append(params[1])
            jsw_param_arr_loop.append(params[2])
            jsw_param_arr_loop.append(params[3])
            jsw_param_arr_loop.append(params[4])
            jsw_param_arr_loop.append(params[5])
            jsw_param_arr_loop.append(params[6])
            print("\tDone!")
            print() 

            filename = filename[0:12] + '_MCP3_JOINT_MASK.nii'
            print("Calculating JSW parameters for: " + str(filename))

            # Update for grayscale images
            image_path = os.path.join(input_path, filename)
            output_path = input_path

            # Run the autocontour instead of reading in the mask
            mask = sitk.ReadImage(image_path, sitk.sitkUInt8)

            params = jsw(mask, name, output_path)

            jsw_param_arr_loop.append(params[0])
            jsw_param_arr_loop.append(params[1])
            jsw_param_arr_loop.append(params[2])
            jsw_param_arr_loop.append(params[3])
            jsw_param_arr_loop.append(params[4])
            jsw_param_arr_loop.append(params[5])
            jsw_param_arr_loop.append(params[6])
            print("\tDone!")
            print()

            with open(output_csv, 'a') as f_object:
                writer_object = writer(f_object)
                writer_object.writerow(jsw_param_arr_loop)
                f_object.close()

        # jsw_param_arr = np.vstack([jsw_param_arr, jsw_param_arr_loop])
        # output_string = jsw_param_arr.astype(str)
        # np.savetxt(output_csv, output_string.astype(str), delimiter=",", fmt="%s")
        # sys.exit()

    print()
    print("--- Time to run: %s seconds ---" % (time.time() - start_time))
