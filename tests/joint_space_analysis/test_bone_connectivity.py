import unittest
import numpy as np
import SimpleITK as sitk

from ormir_xct.joint_space_analysis.connected_check import connected_check


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


class TestBoneConnectivityCheck(unittest.TestCase):
    def test_connected_check(self):
        voxel_width = (1, 1, 1)
        shape = (30, 30, 30)
        radius = 4
        sphere_array = create_sphere_mask(shape, voxel_width, radius).astype(float)
        translated_sphere_x = np.roll(sphere_array, 5, axis=[1, 0, 0])

        empty = sitk.Image(shape, sitk.sitkUInt8)
        one_sphere = sitk.GetImageFromArray(sphere_array)
        two_sphere = sitk.GetImageFromArray(sphere_array + translated_sphere_x)
        one_sphere = sitk.Cast(one_sphere, sitk.sitkUInt8)
        two_sphere = sitk.Cast(two_sphere, sitk.sitkUInt8)

        empty_labels = connected_check(empty)
        one_sphere_labels = connected_check(one_sphere)
        two_sphere_labels = connected_check(two_sphere)

        self.assertAlmostEqual(empty_labels, 0, 8)
        self.assertAlmostEqual(one_sphere_labels, 1, 8)
        self.assertAlmostEqual(two_sphere_labels, 2, 8)
