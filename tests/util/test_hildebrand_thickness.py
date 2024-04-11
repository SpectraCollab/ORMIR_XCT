import unittest

import numpy as np
from ormir_xct.util.hildebrand_thickness import (
    compute_local_thickness_from_sorted_distances,
    compute_local_thickness_from_mask,
    calc_structure_thickness_statistics,
)


def create_sphere_mask(shape, voxel_width, radius):
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
        (x - center[0]) ** 2 + (y - center[1]) ** 2 + (z - center[2]) ** 2
        <= radius**2
    ] = 1
    return mask


class TestCalcStructureThicknessStatistics(unittest.TestCase):
    def test_get_sphere_thickness(self):
        voxel_width = (1, 1, 1)
        shape = (50, 50, 50)
        radius = 20
        min_thickness = 0
        sphere = create_sphere_mask(shape, voxel_width, radius)
        s = calc_structure_thickness_statistics(
            sphere, voxel_width, min_thickness, oversample=False
        )
        self.assertAlmostEqual(2 * radius, s[0], places=1)


if __name__ == "__main__":
    unittest.main()
