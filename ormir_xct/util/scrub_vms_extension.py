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
        filepath = os.path.join(directory, file)
        name, extension = os.path.splitext(file)

        if ";" in extension:
            new_file = name + extension.split(";", 1)[0]
            new_filepath = os.path.join(directory, new_file)
            print("Renaming: " + file + " to: " + new_file)
            os.rename(filepath, new_filepath)


def main(input_dir):
    scrub_vms_extension(input_dir)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("input_dir", type=str, help="Input directory")
    args = parser.parse_args()

    input_dir = args.input_dir

    main(input_dir)
