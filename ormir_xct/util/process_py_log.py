"""
Created by: Michael Kuczynski
Created on: ??

Description: Functions to parse Python thickness logs to extract thickness data. 
"""

import os
import glob
import argparse
import numpy as np


def process_py_log(log_dir, output_dir):
    """
    Extracts thickness values from Python generated thickness computation and
    saves values into a single text file.

    Parameters:
    -----------
    log_dir : string
    output_dir : string
    """
    # Padded shapes
    hollow_sphere_files = glob.glob(os.path.join(log_dir, "*H_SPH*.txt"))
    filled_sphere_files = glob.glob(os.path.join(log_dir, "*F_SPH*.txt"))
    hollow_cylinder_files = glob.glob(os.path.join(log_dir, "*H_CYL*.txt"))
    filled_cylinder_files = glob.glob(os.path.join(log_dir, "*F_CYL*.txt"))
    plate_files = glob.glob(os.path.join(log_dir, "*PLATE*.txt"))

    # Oversampled shapes
    hollow_sphere_oversample_files = glob.glob(
        os.path.join(log_dir, "*H_SPH*_OVERSAMPLE_SKEL.txt")
    )
    filled_sphere_oversample_files = glob.glob(
        os.path.join(log_dir, "*F_SPH*_OVERSAMPLE_SKEL.txt")
    )
    hollow_cylinder_oversample_files = glob.glob(
        os.path.join(log_dir, "*H_CYL*_OVERSAMPLE_SKEL.txt")
    )
    filled_cylinder_oversample_files = glob.glob(
        os.path.join(log_dir, "*F_CYL*_OVERSAMPLE_SKEL.txt")
    )
    plate_oversample_files = glob.glob(
        os.path.join(log_dir, "*PLATE*_OVERSAMPLE_SKEL.txt")
    )

    # Remove the oversampled images from the log lists
    hollow_sphere_files = list(
        set(hollow_sphere_files) - set(hollow_sphere_oversample_files)
    )
    filled_sphere_files = list(
        set(filled_sphere_files) - set(filled_sphere_oversample_files)
    )
    hollow_cylinder_files = list(
        set(hollow_cylinder_files) - set(hollow_cylinder_oversample_files)
    )
    filled_cylinder_files = list(
        set(filled_cylinder_files) - set(filled_cylinder_oversample_files)
    )
    plate_files = list(set(plate_files) - set(plate_oversample_files))

    # Sort the lists alphabetically
    hollow_sphere_files.sort()
    filled_sphere_files.sort()
    hollow_cylinder_files.sort()
    filled_cylinder_files.sort()
    plate_files.sort()
    hollow_sphere_oversample_files.sort()
    filled_sphere_oversample_files.sort()
    hollow_cylinder_oversample_files.sort()
    filled_cylinder_oversample_files.sort()
    plate_oversample_files.sort()

    csv_array = np.array(
        ["Filename", "main_th", "main_th_sd", "main_th_min", "main_th_max"]
    )

    shape_list = [
        (hollow_sphere_oversample_files, "H_SPH_OVERSAMPLE_SKEL_DT_THICKNESS_PY.csv"),
        (filled_sphere_oversample_files, "F_SPH_OVERSAMPLE_SKEL_DT_THICKNESS_PY.csv"),
        (hollow_cylinder_oversample_files, "H_CYL_OVERSAMPLE_SKEL_DT_THICKNESS_PY.csv"),
        (filled_cylinder_oversample_files, "F_CYL_OVERSAMPLE_SKEL_DT_THICKNESS_PY.csv"),
        (plate_oversample_files, "PLATE_OVERSAMPLE_SKEL_DT_THICKNESS_PY.csv"),
    ]

    for shape in shape_list:

        for log_file in shape[0]:
            # Read the log (text) file
            basename = os.path.basename(log_file)
            print("Parsing: " + str(basename))
            file = open(log_file, "r")
            lines = file.read().splitlines()
            lines = [str(i) for i in lines]
            file.close()

            # Split the lines into lists and parse out the values
            header = lines[0]
            values = lines[1].split()

            filename = values[0]
            main_th = values[1]
            main_th_sd = values[2]
            main_th_min = values[3]
            main_th_max = values[4]

            output_array = np.array(
                [filename, main_th, main_th_sd, main_th_min, main_th_max]
            )
            csv_array = np.vstack([csv_array, output_array])

        output_csv = os.path.join(output_dir, shape[1])
        print(output_csv)
        csv_array = csv_array.astype(str)
        np.savetxt(output_csv, csv_array, delimiter=",", fmt="%s")


if __name__ == "__main__":
    # Parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("log_dir", type=str)
    parser.add_argument("output_dir", type=str)
    args = parser.parse_args()

    log_dir = args.log_dir
    output_dir = args.output_dir

    process_py_log(log_dir, output_dir)
