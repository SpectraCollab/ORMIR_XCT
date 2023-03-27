import sys
import os
import time
import datetime
import argparse
import numpy as np
import SimpleITK as sitk

from csv import writer

from ormir_xct.util.segmentation_evaluation import calculate_dice_and_jaccard


def ipl_seg_eval(seg, ref):
    ref = sitk.GetArrayFromImage(ref)
    seg = sitk.GetArrayFromImage(seg)

    dice, jaccard = calculate_dice_and_jaccard(ref, seg)

    return dice, jaccard


if __name__ == "__main__":
    start_time = time.time()

    # -------Inputs:-------#
    parser = argparse.ArgumentParser()
    parser.add_argument("input_path", type=str, help="Input directory")
    args = parser.parse_args()

    input_path = args.input_path
    output_csv = os.path.join(input_path, "ipl_seg.csv")

    seg_eval = [
        "Filename",
        "Process Date",
        "MCP2 DICE",
        "MCP2 JACCARD",
        "MCP3 DICE",
        "MCP3 JACCARD",
    ]

    with open(output_csv, "a") as f_object:
        writer_object = writer(f_object)
        writer_object.writerow(seg_eval)
        f_object.close()

    # Loop through all files in the directory
    for filename in os.listdir(input_path):
        # Get study ID number
        study_ID = filename
        seg_eval_loop = [filename[0:9], datetime.datetime.now()]

        name, extension = os.path.splitext(filename)

        if not ("mcp2_seg_resampled.nii" in filename.lower()):
            continue
        else:
            print("Running segmentation evaluation on: " + str(filename))

            image_path = os.path.join(input_path, filename)
            output_path = input_path

            ipl_seg = sitk.ReadImage(image_path, sitk.sitkUInt8)
            py_seg = sitk.ReadImage(
                os.path.join(input_path, filename[0:12] + "_MCP2_SEG_PY.nii"),
                sitk.sitkUInt8,
            )
            dice, jaccard = ipl_seg_eval(py_seg, ipl_seg)

            seg_eval_loop.append(dice)
            seg_eval_loop.append(jaccard)
            print("\tDone!")
            print()

            filename = filename[0:12] + "_MCP3_SEG_RESAMPLED.nii"
            print("Running segmentation evaluation on: " + str(filename))

            image_path = os.path.join(input_path, filename)
            output_path = input_path

            ipl_seg = sitk.ReadImage(image_path, sitk.sitkUInt8)
            py_seg = sitk.ReadImage(
                os.path.join(input_path, filename[0:12] + "_MCP3_SEG_PY.nii"),
                sitk.sitkUInt8,
            )
            dice, jaccard = ipl_seg_eval(py_seg, ipl_seg)

            seg_eval_loop.append(dice)
            seg_eval_loop.append(jaccard)
            print("\tDone!")
            print()

            with open(output_csv, "a") as f_object:
                writer_object = writer(f_object)
                writer_object.writerow(seg_eval_loop)
                f_object.close()

    print()
    print("--- Time to run: %s seconds ---" % (time.time() - start_time))
