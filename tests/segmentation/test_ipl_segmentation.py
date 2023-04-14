"""
test_ipl_segmentation.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test IPL standard segmentation.
"""

import os
import unittest
import numpy as np
import SimpleITK as sitk

from ormir_xct.segmentation.ipl_seg import ipl_seg


def create_sphere_mask(shape, voxel_width, radius):
    """
    Creates a binary NumPy sphere with given radius and voxel size.
    """
    center = (
        voxel_width[0] * (shape[0] // 2),
        voxel_width[1] * (shape[1] // 2),
        voxel_width[2] * (shape[2] // 2),
    )
    x, y, z = np.meshgrid(
        *[voxel_width[i] * np.arange(0, shape[i]) for i in range(3)], indexing="ij"
    )
    mask = np.zeros(shape, dtype=bool)
    mask[
        (x - center[0]) ** 2 + (y - center[1]) ** 2 + (z - center[2]) ** 2 < radius**2
    ] = 1
    return mask


class TestIPLSegmentation(unittest.TestCase):
    def test_ipl_segmentation(self):
        voxel_width = (1, 1, 1)
        shape = (10, 10, 10)
        radius = 4
        sphere_array = create_sphere_mask(shape, voxel_width, radius).astype(float)
        sphere = sitk.GetImageFromArray(sphere_array)

        result_image = ipl_seg(sphere, 1, 2, 1, 1, 0.01)
        result_array = sitk.GetArrayFromImage(result_image).astype(float)

        np.testing.assert_array_equal(sphere_array, result_array)
