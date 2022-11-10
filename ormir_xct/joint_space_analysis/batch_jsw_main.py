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

from ormir_xct.autocontour.autocontour import autocontour
from connected_check import connected_check
from jsw_morphometry import jsw_dilate, jsw_erode, jsw_parameters

if __name__ == '__main__':
    start_time = time.time()

    #-------Inputs:-------#
    parser = argparse.ArgumentParser()
    parser.add_argument('inputDirPath', type=str, help='Input directory')
    args = parser.parse_args()

    inputDirPath = args.inputDirPath
    outputCSV = os.path.join(inputDirPath, 'jsw.csv')

    jswParametersArray = np.array([['Filename', 'Process Date', \
                                'MCP2 JSV (mm3)', 'MCP2 JSW.Mean (mm)', 'MCP2 JSW.Mean_STD (mm)', \
                                'MCP2 JSW.Min (mm)', 'MCP2 Connectivity Check', 'MCP2 JSW.Max (mm)', 'MCP2 JSW.AS', \
                                'MCP3 JSV (mm3)', 'MCP3 JSW.Mean (mm)', 'MCP3 JSW.Mean_STD (mm)', \
                                'MCP3 JSW.Min (mm)', 'MCP2 Connectivity Check', 'MCP3 JSW.Max (mm)', 'MCP3 JSW.AS']], dtype=object)


    # Loop through all folders in the directory
    for folder in os.listdir(inputDirPath) :
        # Get the next folder
        nextFolder = os.path.join(inputDirPath, folder)

        if os.path.isdir(nextFolder):
            # Get study ID number
            study_ID = folder # os.path.basename(nextFolder)
            jswParametersArrayLoop = np.array([[study_ID, datetime.datetime.now()]], dtype=object)
            params = []

            print('Calculating JSW parameters for: ' + str(nextFolder))

            # Loop through files in the folder and only process MPC2 and MCP3 masks
            for filename in os.listdir(nextFolder):
                name, extension = os.path.splitext(filename)

                if ('mcp2' or 'mcp3') and '.nrrd' not in filename.lower():
                    continue
                
                elif 'mcp2' in filename.lower():
                    print('\tMCP2...')
                    bone = 'MCP2'

                elif 'mcp3' in filename.lower():
                    print('\tMCP3...')
                    bone = 'MCP3'

                # Update for grayscale images
                image_path = os.path.join(nextFolder, filename)
                output_path = nextFolder

                # Run the autocontour instead of reading in the mask
                img = sitk.ReadImage(image_path, sitk.sitkFloat32)

                # Get voxel size (assume isotropic voxels)
                voxel_size = img.GetSpacing()[0]

                print('\tRunning autocontour...')
                dst_mask, prx_mask, mask = autocontour(img)
                mask_path = os.path.join(output_path, str(name) + '_MASK.mha')
                sitk.WriteImage(mask, mask_path)
                sitk.WriteImage(prx_mask, os.path.join(output_path, str(name) + '_PRX_MASK.mha'))
                sitk.WriteImage(dst_mask, os.path.join(output_path, str(name) + '_DST_MASK.mha'))

                print('\tDilating mask...')
                dilated_image = jsw_dilate(sitk.Cast(mask, sitk.sitkUInt8))
                sitk.WriteImage(dilated_image, os.path.join(output_path, str(name) + '_DILATE.mha'))

                print('\tEroding mask...')
                eroded_image, js_mask = jsw_erode(dilated_image, mask)
                sitk.WriteImage(eroded_image, os.path.join(output_path, str(name) + '_ERODE.mha'))
                sitk.WriteImage(js_mask, os.path.join(output_path, str(name) + '_JS_MASK.mha'))

                # Ignore the filename and time saved in the jsw_parameters function
                # Returned array: [jsv, jsw_mean, jsw_mean_sd, jsw_min, jsw_max, jsw_AS]
                print('\tGenerating JS mask and computing JS parameters...')
                dt_img, jsw_params = jsw_parameters(js_mask, output_path, study_ID, voxel_size)
                sitk.WriteImage(dt_img, os.path.join(output_path, str(name) + '_DT.mha'))

                # Check if we have bone-on-bone contact (not detected up in the JSW analysis)
                print('\tRunning bone-on-bone contact check...')
                labels = connected_check(mask_path)
                if labels > 1:
                    print('\tMask is NOT CONNECTED')
                    connected = 'NO'
                elif labels == 1:
                    print('\tMask is CONNECTED')
                    connected = 'YES'
                else:
                    print('\tMask has 0 labels')
                    connected = 'NO LABELS'

                # Array to save: [jsv, jsw_mean, jsw_mean_sd, jsw_min, connected, jsw_max, jsw_AS]
                params = np.array([[jsw_params[0][2], jsw_params[0][3], jsw_params[0][4], \
                            jsw_params[0][5], connected, jsw_params[0][6], jsw_params[0][7]]])

                jswParametersArrayLoop = np.hstack([jswParametersArrayLoop, params])
                print('\tDone!')
                print()
                
            jswParametersArray = np.vstack([jswParametersArray, jswParametersArrayLoop])
        else:
            continue

    outputString = jswParametersArray.astype(str)
    np.savetxt(outputCSV, outputString.astype(str), delimiter=',', fmt='%s')

    print()
    print('--- Time to run: %s seconds ---' % (time.time() - start_time))