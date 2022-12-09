"""
scrub_vms_extension.py

Created by: Michael Kuczynski
Created on: Dec. 6, 2022

Description: Removes the OpenVMS extension (e.g., ;1) from all files in a
                given directory.

Usage:
    python scrub_vms_extension.py input_dir
"""

import os
import argparse


def scrub_vms_extension(directory):
    """
    Loops through the given directory and removes the OpenVMS extension from
    every file in the directory.

    Parameters
    ----------
    directory : string
        A string containing the directory path

    Returns
    -------

    """
    for file in os.listdir(directory):
        filename = os.path.join(directory, file)
        if ";" in filename[-2:-1]:
            new_filename = os.path.join(directory, filename[:-2])
            print("Renaming: " + file + " to: " + file[:-2])
            os.rename(filename, new_filename)


def main(input_dir):
    scrub_vms_extension(input_dir)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("input_dir", type=str, help="Input directory")
    args = parser.parse_args()

    input_dir = args.input_dir

    main(input_dir)
