"""
Created by: Michael Kuczynski
Created on: ??

Description: Functions to parse IPL logs to extract thickness data. 
"""

import os
import re
import glob
import argparse
import numpy as np


def process_ipl_log(log_dir, output_dir):
    """
    Extracts thickness values from IPL generated thickness computation and
    saves values into a single text file.

    Parameters:
    -----------
    log_dir : string
    output_dir : string
    """
    jsw_hollow_sphere_files = glob.glob(os.path.join(log_dir, "*H_SPH*JSW*.LOG"))
    jsw_filled_sphere_files = glob.glob(os.path.join(log_dir, "*F_SPH*JSW*.LOG"))
    jsw_hollow_cylinder_files = glob.glob(os.path.join(log_dir, "*H_CYL*.LOG"))
    jsw_filled_cylinder_files = glob.glob(os.path.join(log_dir, "*F_CYL*.LOG"))
    jsw_plate_files = glob.glob(os.path.join(log_dir, "*PLATE*JSW*.LOG"))

    # Sort the lists alphabetically
    jsw_hollow_sphere_files.sort()
    jsw_filled_sphere_files.sort()
    jsw_hollow_cylinder_files.sort()
    jsw_filled_cylinder_files.sort()
    jsw_plate_files.sort()

    csv_array = np.array(
        [
            "Filename",
            "Version",
            "BG Th V1",
            "BG Th.Sd",
            "BG Th.Max",
            "BG Th.Skew",
            "BG Th.Kurtos",
            "Version",
            "BG Th V2",
            "BG Th.Sd",
            "BG Th.Max",
            "BG Th.Skew",
            "BG Th.Kurtos",
            "Version",
            "BG Th V3",
            "BG Th.Sd",
            "BG Th.Max",
            "BG Th.Skew",
            "BG Th.Kurtos",
        ]
    )

    for log_file in jsw_hollow_cylinder_files:
        basename = os.path.basename(log_file)
        print("Parsing: " + str(basename))
        file = open(log_file, "rb")
        lines = file.read().splitlines()
        lines = [str(i) for i in lines]
        file.close()

        # Extract the DT values
        indices = [i for i, elem in enumerate(lines) if "DT Metric Measures" in elem]
        dt_results = []
        for i in indices:
            # result = [BG Th., BG Th.Sd, BG Th.Max, BG Th.Skew, BG Th.Kurtos]
            result = [
                re.findall(r"[-+]?(?:\d*\.*\d+)", lines[i + 2])[0],
                re.findall(r"[-+]?(?:\d*\.*\d+)", lines[i + 3])[0],
                re.findall(r"[-+]?(?:\d*\.*\d+)", lines[i + 4])[0],
                re.findall(r"[-+]?(?:\d*\.*\d+)", lines[i + 5])[0],
                re.findall(r"[-+]?(?:\d*\.*\d+)", lines[i + 6])[0],
            ]
            dt_results.append(result)

        output_array = np.array(
            [
                basename,
                "1",
                dt_results[0][0],
                dt_results[0][1],
                dt_results[0][2],
                dt_results[0][3],
                dt_results[0][4],
                "2",
                dt_results[1][0],
                dt_results[1][1],
                dt_results[1][2],
                dt_results[1][3],
                dt_results[1][4],
                "3",
                dt_results[2][0],
                dt_results[2][1],
                dt_results[2][2],
                dt_results[2][3],
                dt_results[2][4],
            ]
        )
        csv_array = np.vstack([csv_array, output_array])

    output_csv = os.path.join(output_dir, "H_CYL_JSW_THICKNESS_IPL.csv")
    csv_array = csv_array.astype(str)
    np.savetxt(output_csv, csv_array, delimiter=",", fmt="%s")

    return


if __name__ == "__main__":
    # Parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("log_dir", type=str)
    parser.add_argument("output_dir", type=str)
    args = parser.parse_args()

    log_dir = args.log_dir
    output_dir = args.output_dir

    process_ipl_log(log_dir, output_dir)
