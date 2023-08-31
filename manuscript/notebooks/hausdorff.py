import SimpleITK as sitk
import numpy as np
import sys
import os
import argparse

from scipy.spatial import distance

def hausdorff_distance(ref, image):
    d = sitk.HausdorffDistanceImageFilter()
    d.Execute(ref, image)

    return (d.GetAverageHausdorffDistance(), d.GetHausdorffDistance())

def get_image_pairs(directory):
    ormir_masks = []
    ipl_masks = []

    for filename in os.scandir(directory):
        if filename.is_file():
            if filename.name.startswith("."):
                continue
            elif ("DST" in filename.path) or ("PRX" in filename.path):
                continue
            elif filename.path.endswith("_MASK.nii"):
                ormir_masks.append(filename.path)
            elif filename.path.endswith("_JOINT.nii"):
                ipl_masks.append(filename.path)
    
    ipl_masks.sort()
    ormir_masks.sort()

    return (ipl_masks, ormir_masks)

def resample_to_image(img_path, ref_path):
    resampled_path = os.path.splitext(img_path)[0]
    resampled_path = resampled_path + "_RESAMPLED.nii"

    image = sitk.ReadImage(img_path)
    imageSize = image.GetSize()
    imageOrigin = image.GetOrigin()
    imageSpacing = image.GetSpacing()
    imageDirection = image.GetDirection()
    imageDataType = image.GetPixelID()

    refImage = sitk.ReadImage(ref_path)
    refImageSize = refImage.GetSize()
    refImageOrigin = refImage.GetOrigin()
    refImageSpacing = refImage.GetSpacing()
    refImageDirection = refImage.GetDirection()
    refImageDataType = refImage.GetPixelID()

    # Check optional arguements
    sitkInterpolator = sitk.sitkLinear

    # Resample the image
    print("** Resampling...")
    resampleFilter = sitk.ResampleImageFilter()
    resampleFilter.SetReferenceImage(refImage)
    resampleFilter.SetInterpolator(sitkInterpolator)
    resampleFilter.SetOutputPixelType(refImageDataType)

    # Print resampling progress
    resampleFilter.AddCommand(
        sitk.sitkProgressEvent,
        lambda: print(
            "\rProgress: {0:03.1f}%...".format(100 * resampleFilter.GetProgress()), end=""
        ),
    )
    resampleFilter.AddCommand(sitk.sitkProgressEvent, lambda: sys.stdout.flush())

    resampledImage = resampleFilter.Execute(image)

    print("Done!")

    # Write out the resampled image
    print("Writing resampled image to: " + str(resampled_path))
    sitk.WriteImage(resampledImage, resampled_path)
    return resampledImage

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("directory", type=str)
    args = parser.parse_args()

    directory = args.directory

    seg_pairs = get_image_pairs(directory)

    results = []

    for i in range(len(seg_pairs[0])):
        print(seg_pairs[0][i])
        print(seg_pairs[1][i])
        ref = sitk.ReadImage(seg_pairs[0][i], sitk.sitkInt16)
        image = sitk.ReadImage(seg_pairs[1][i], sitk.sitkInt16)

        resampled_image = resample_to_image(seg_pairs[1][i], seg_pairs[0][i])
        mean, maximum = hausdorff_distance(ref, resampled_image)

        # try:
        #     mean, maximum = hausdorff_distance(ref, image)
        # except:
        #     resampled_image = resample_to_image(seg_pairs[1][i], seg_pairs[0][i])
        #     mean, maximum = hausdorff_distance(ref, resampled_image)

        print(f"Average: {mean}, Maximum: {maximum}")
        results.append((mean, maximum))
        print("Done")

    # print(results)