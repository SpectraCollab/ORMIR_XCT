"""
Created by: Michael Kuczynski
Created on: ??

Description: Functions to generate filled/hollow spheres, cylinders, plates, and compute thickness. 
"""

import os
import numpy as np
import SimpleITK as sitk

from ormir_xct.util.hildebrand_thickness import calc_structure_thickness_statistics

IMAGE_SHAPE = tuple([25] * 3)  # image size
VOXEL_WIDTH = tuple([1] * 3)  # spacing 1x1x1 for simplicity

VOXEL_SIZE = 1


def create_shape(shape, voxel_widths, thickness, shape_type="sphere"):
    """
    Given image size, voxel size, figure thickness, and  type of shape, it returns a binary image with the input characteristics
    This function is from the notebook: https://github.com/SpectraCollab/ORMIR_XCT/blob/main/examples/hildebrand_notebook.ipynb

    Parameters
    ----------
    shape: tuple
        Contains three numbers corresponding to image size (e.g. (25,25,25)). Unit it voxel
    voxel_widths: tuple
        Contains three numbers corresponding to voxel size (e.g. (0.0607, 0.0607, 0.0607) for HR-pQCT)
    thickness: integer
        Thickness of the figure (e.g. sphere or cylinder radius)
    shape_type: string
        It can be sphere, cylinder, plate

    Returns
    -------
    mask: 3D numpy array
        Binary image where the shape is represented by 1s and the background by 0s
    """

    center = (
        voxel_widths[0] * (shape[0] // 2),
        voxel_widths[1] * (shape[1] // 2),
        voxel_widths[2] * (shape[2] // 2),
    )

    x, y, z = np.meshgrid(
        *[voxel_widths[i] * np.arange(0, shape[i]) for i in range(3)], indexing="ij"
    )
    if shape_type == "sphere":
        mask = (
            ((x - center[0]) ** 2 + (y - center[1]) ** 2 + (z - center[2]) ** 2)
            < (thickness / 2) ** 2
        ).astype(int)
    elif shape_type == "cylinder":
        mask = (
            ((x - center[0]) ** 2 + (y - center[1]) ** 2) < (thickness / 2) ** 2
        ).astype(int)
    elif shape_type == "plate":
        mask = (np.abs(x - center[0]) < thickness / 2).astype(int)
    else:
        raise ValueError(
            f"`shape_type` can be `sphere`, `cylinder`, `plate`; got {shape_type}"
        )
    return mask


def create_filled_spheres(img_dir, padding=10, min=1, max=51, inc=1):
    """
    Generate filled spheres.

    Parameters
    ----------
    img_dir : string
        Image file path
    padding : integer
        Amount to pad image
    min : integer
        Minimum radius
    max : integer
        Maximum radius
    inc : integer
        Radius increment value
    """
    for i in range(min, max, inc):
        t = VOXEL_SIZE * i
        sphere_outer_radius = t
        IMAGE_SHAPE = tuple([sphere_outer_radius * 2] * 3)

        sphere = create_shape(
            IMAGE_SHAPE, VOXEL_WIDTH, sphere_outer_radius, shape_type="sphere"
        )

        print("Writing filled sphere: " + str(i))
        img = sitk.GetImageFromArray(sphere)
        img.SetSpacing((VOXEL_SIZE, VOXEL_SIZE, VOXEL_SIZE))
        img = sitk.Cast(img, sitk.sitkUInt8)

        # Pad edges with a 10 slices on each side
        img = sitk.ConstantPad(img, tuple([padding] * 3), tuple([padding] * 3))

        img_name = os.path.join(img_dir, "F_SPH_OUTR_" + str(i) + ".nii")
        sitk.WriteImage(img, img_name)


def create_hollow_spheres(
    img_dir, padding=10, out_min=1, out_max=51, out_inc=1, in_min=1, in_max=51, in_inc=1
):
    """
    Generate hollow spheres

    Parameters
    ----------
    img_dir : string
        Image file path
    padding : integer
        Amount to pad image
    out_min : integer
        Minimum outer radius
    out_max : integer
        Maximum outer radius
    out_inc : integer
        Outer radius increment value
    in_min : integer
        Minimum inner radius
    in_max : integer
        Maximum inner radius
    in_inc : integer
        Inner radius increment value
    """

    # Loop through various outer sphere radii
    for i in range(out_min, out_max, out_inc):
        # Loop through various inner sphere radii
        for j in range(in_min, in_max, in_inc):
            if j >= i:
                break

            sphere_inner_radius = j * VOXEL_SIZE
            sphere_outer_radius = i * VOXEL_SIZE
            IMAGE_SHAPE = tuple([sphere_outer_radius * 2] * 3)

            outer_sphere = create_shape(
                IMAGE_SHAPE, VOXEL_WIDTH, sphere_outer_radius, shape_type="sphere"
            )
            inner_sphere = create_shape(
                IMAGE_SHAPE, VOXEL_WIDTH, sphere_inner_radius, shape_type="sphere"
            )
            sphere = outer_sphere - inner_sphere

            print("Writing hollow sphere: " + str(i) + "_" + str(j))
            img = sitk.GetImageFromArray(sphere)
            img.SetSpacing((VOXEL_SIZE, VOXEL_SIZE, VOXEL_SIZE))
            img = sitk.Cast(img, sitk.sitkUInt8)

            # Pad edges with a 10 slices on each side
            img = sitk.ConstantPad(img, tuple([padding] * 3), tuple([padding] * 3))

            img_name = os.path.join(
                img_dir, "H_SPH_OUTR_" + str(i) + "_INR_" + str(j) + ".nii"
            )
            sitk.WriteImage(img, img_name)


def create_filled_cylinders(
    img_dir,
    padding=10,
    rad_min=1,
    rad_max=51,
    rad_inc=1,
    len_min=1,
    len_max=101,
    len_inc=5,
):
    """
    Generate filled cylinders. Models trabecular rods.

    Parameters
    ----------
    img_dir : string
        Image file path
    padding : integer
        Amount to pad image
    rad_min : integer
        Minimum radius
    rad_max : integer
        Maximum radius
    rad_inc : integer
        Radius increment value
    len_min : integer
        Minimum length
    len_max : integer
        Maximum length
    len_inc : integer
        Length increment value
    """

    # Loop through various cylinder radii
    for i in range(rad_min, rad_max, rad_inc):
        # Loop through various cylinder lengths
        for l in range(len_min, len_max, len_inc):
            sphere_outer_radius = i * VOXEL_SIZE
            IMAGE_SHAPE = tuple(
                [sphere_outer_radius * 2, sphere_outer_radius * 2, l * 2]
            )

            outer_cylinder = create_shape(
                IMAGE_SHAPE, VOXEL_WIDTH, sphere_outer_radius, shape_type="cylinder"
            )

            print("Writing filled cylinder: " + str(i) + "_" + str(l))
            img = sitk.GetImageFromArray(outer_cylinder)
            img.SetSpacing((VOXEL_SIZE, VOXEL_SIZE, VOXEL_SIZE))
            img = sitk.Cast(img, sitk.sitkUInt8)

            # Pad edges with a 10 slices on each side
            img = sitk.ConstantPad(img, tuple([padding] * 3), tuple([padding] * 3))

            img_name = os.path.join(
                img_dir, "F_CYL_OUTR_" + str(i) + "_LEN_" + str(l) + ".nii"
            )
            sitk.WriteImage(img, img_name)


def create_hollow_cylinders(
    img_dir,
    padding=10,
    out_min=1,
    out_max=51,
    out_inc=5,
    in_min=1,
    in_max=51,
    in_inc=5,
    len_min=1,
    len_max=101,
    len_inc=5,
):
    """
    Generate hollow cylinders. Models cortical bone in a shaft.

    Parameters
    ----------
    img_dir : string
        Image file path
    padding : integer
        Amount to pad image
    out_min : integer
        Minimum outer radius
    out_max : integer
        Maximum outer radius
    out_inc : integer
        Outer radius increment value
    in_min : integer
        Minimum inner radius
    in_max : integer
        Maximum inner radius
    in_inc : integer
        Inner radius increment value
    len_min : integer
        Minimum length
    len_max : integer
        Maximum length
    len_inc : integer
        Length increment value
    """

    # Loop through various outer cylinder radii
    for i in range(out_min, out_max, out_inc):
        # Loop through various inner cylinder radii
        for j in range(in_min, in_max, in_inc):
            if j >= i:
                break

            # Loop through various cylinder lengths
            for l in range(len_min, len_max, len_inc):
                sphere_inner_radius = j * VOXEL_SIZE
                sphere_outer_radius = i * VOXEL_SIZE
                IMAGE_SHAPE = tuple(
                    [sphere_outer_radius * 2, sphere_outer_radius * 2, l * 2]
                )

                outer_cylinder = create_shape(
                    IMAGE_SHAPE, VOXEL_WIDTH, sphere_outer_radius, shape_type="cylinder"
                )
                inner_cylinder = create_shape(
                    IMAGE_SHAPE, VOXEL_WIDTH, sphere_inner_radius, shape_type="cylinder"
                )
                hollow_cylinder = outer_cylinder - inner_cylinder

                print(
                    "Writing hollow cylinder: " + str(i) + "_" + str(j) + "_" + str(l)
                )
                img = sitk.GetImageFromArray(hollow_cylinder)
                img.SetSpacing((VOXEL_SIZE, VOXEL_SIZE, VOXEL_SIZE))
                img = sitk.Cast(img, sitk.sitkUInt8)

                # Pad edges with a 10 slices on each side
                img = sitk.ConstantPad(img, tuple([padding] * 3), tuple([padding] * 3))

                img_name = os.path.join(
                    img_dir,
                    "H_CYL_OUTR_"
                    + str(i)
                    + "_INR_"
                    + str(j)
                    + "_LEN_"
                    + str(l)
                    + ".nii",
                )
                sitk.WriteImage(img, img_name)


def create_plates(
    img_dir, padding=10, w_min=1, w_max=51, w_inc=1, l_min=1, l_max=51, l_inc=2
):
    """
    Generate plates. Models trabecular plates.

    Parameters
    ----------
    img_dir : string
        Image file path
    padding : integer
        Amount to pad image
    w_min : integer
        Minimum width thickness
    w_max : integer
        Maximum width thickness
    w_inc : integer
        Width thickness increment value
    l_min : integer
        Minimum length thickness
    l_max : integer
        Maximum length thickness
    l_inc : integer
        Length thickness increment value
    """

    # Loop through various plate widths
    for i in range(w_min, w_max, w_inc):
        # Loop through various plate lengths (only consider squares)
        for l in range(l_min, l_max, l_inc):
            plate_width = i * VOXEL_SIZE
            IMAGE_SHAPE = tuple([l * 2] * 3)

            plate = create_shape(
                IMAGE_SHAPE, VOXEL_WIDTH, plate_width, shape_type="plate"
            )

            print("Writing plate: " + str(i) + "_" + str(l))
            img = sitk.GetImageFromArray(plate)
            img.SetSpacing((VOXEL_SIZE, VOXEL_SIZE, VOXEL_SIZE))
            img = sitk.Cast(img, sitk.sitkUInt8)

            # Pad edges with a 10 slices on each side
            img = sitk.ConstantPad(img, tuple([padding] * 3), tuple([padding] * 3))

            img_name = os.path.join(
                img_dir, "PLATE_WIDTH_" + str(i) + "_LEN_" + str(l) + ".nii"
            )
            sitk.WriteImage(img, img_name)


def compute_thickness(base_dir):
    """
    Compute thickness

    Parameters
    ----------
    base_dir : string
        Directory containing images
    """

    # Make a log file directory
    log_dir = os.path.join(base_dir, "LOG")
    if not os.path.isdir(log_dir):
        try:
            os.mkdir(log_dir)
        except OSError as error:
            print(error)

    # Loop through image directory and compute thickness
    for filename in os.listdir(img_dir):
        f = os.path.join(img_dir, filename)

        if ".nii" not in f.lower():
            continue

        # Compute thickness with and without oversampling
        file_basename = os.path.basename(os.path.splitext(f)[0])
        log_file_name = os.path.join(log_dir, file_basename + ".txt")
        log_file_name_oversample = os.path.join(
            log_dir, file_basename + "_OVERSAMPLE_SKEL.txt"
        )

        if os.path.isfile(log_file_name_oversample):
            continue

        print("Computing thickness for: " + str(file_basename))

        shape = sitk.ReadImage(f, sitk.sitkUInt8)
        shape = sitk.GetArrayFromImage(shape)

        thickness_stats_branch = calc_structure_thickness_statistics(
            shape, tuple([VOXEL_SIZE] * 3), 0, oversample=True, skeletonize=True
        )

        filename = file_basename + "_OVERSAMPLE_SKEL"
        header = np.array(["shape", "th_mean", "th_sd", "th_min", "th_max"])
        content = np.array(
            [
                filename,
                thickness_stats_branch[0],
                thickness_stats_branch[1],
                thickness_stats_branch[2],
                thickness_stats_branch[3],
            ]
        )
        log_array = np.vstack((header, content))
        np.savetxt(log_file_name_oversample, log_array, fmt="%s")


if __name__ == "__main__":
    base_dir = "/Volumes/Manskelab/ManskelabProjects/ORMIR_XCT"
    img_dir = "/Volumes/Manskelab/ManskelabProjects/ORMIR_XCT/NII"

    create_filled_spheres(img_dir)
    create_hollow_spheres(img_dir)
    create_filled_spheres(img_dir)
    create_hollow_spheres(img_dir)
    create_plates(img_dir)
    compute_thickness(base_dir)
