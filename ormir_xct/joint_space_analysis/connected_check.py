#-----------------------------------------------------
# connected_check.py
#
# Created by:   Michael Kuczynski
# Created on:   Sept. 09, 2022
#
# Description: Uses connected component labelling to check if a joint
#               segmentation is connected (i.e., JS = 0). This script runs on
#               all images for the HandOA study.
#
# Usage:
#   python connected_check.py handOA_dir
#-----------------------------------------------------

import os
import argparse
import SimpleITK as sitk

def connected_check(image_path):
    """
    Runs a connected component analysis on a binary image and returns the 
    number of components in the image.

    Parameters
    ----------
    image_path : string
        Path to the binary image.

    Returns
    -------
    labels : int
        Number of labels in the binary image. -1 is returned if the image can't
        be read in.
    """
    try:
        image = sitk.ReadImage(image_path)
    except:
        print('ERROR: File {} not found.'.format(image_path))
        return -1

    image_conn = sitk.ConnectedComponent(image, True)
    conn_list = sitk.RelabelComponent(image_conn, sortByObjectSize=True)

    label_stats = sitk.LabelShapeStatisticsImageFilter()
    label_stats.Execute(conn_list)
    labels = label_stats.GetNumberOfLabels()

    return labels


if __name__ == '__main__':
    # Parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument( 'handOA_dir', type=str )
    args = parser.parse_args()

    handOA_dir = args.handOA_dir

    # Loop through HandOA samples
    # Each HandOA study ID will have 3 joints to check: DIP2, DIP3, TMC
    for folder in os.listdir(handOA_dir) :
        # Get the next folder
        next_folder = os.path.join(handOA_dir, folder)

        if os.path.isdir(next_folder):
            print('Checking if joint is connected for: ' + str(next_folder))

            # Get study ID number
            study_name = os.path.basename(next_folder)
            study_id = os.path.basename(next_folder)[-3:]

            # DIP2 joint
            dip2_path = os.path.join(next_folder, study_id + '_DIP2_MASK.nii')
            print('\tDIP2 segmentation: ' + str(dip2_path))

            dip2_labels = connected_check(dip2_path)
            if dip2_labels > 1:
                print('\tDIP2 segmentation NOT CONNECTED')
            elif dip2_labels == 1:
                print('\tDIP2 segmentation is CONNECTED')
            else:
                print('\tDIP2 segmentation has 0 labels')

            # DIP3 joint
            dip3_path = os.path.join(next_folder, study_id + '_DIP3_MASK.nii')
            print('\tDIP3 segmentation: ' + str(dip3_path))

            dip3_labels = connected_check(dip3_path)
            if dip3_labels > 1:
                print('\tDIP3 segmentation NOT CONNECTED')
            elif dip3_labels == 1:
                print('\tDIP3 segmentation is CONNECTED')
            else:
                print('\tDIP3 segmentation has 0 labels')

            # TMC joint
            stack_reg_folder = os.path.join(next_folder, 'stackRegistrationOutput')
            tmc_path = os.path.join(stack_reg_folder, 'FULL_IMAGE_MASK.nii')
            print('\tTMC segmentation: ' + str(tmc_path))

            tmc_labels = connected_check(tmc_path)
            if tmc_labels > 1:
                print('\tTMC segmentation NOT CONNECTED')
            elif tmc_labels == 1:
                print('\tTMC segmentation is CONNECTED')
            else:
                print('\tTMC segmentation has 0 labels')
            
            print('************************************')