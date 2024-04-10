"""
test_bone_mineral_density.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test BMD calculation.
"""

import unittest
import numpy as np
import SimpleITK as sitk
from ormir_xct.bone_mineral_density.bmd import bmd
from ormir_xct.util.scanco_rescale import (
    convert_scanco_to_bmd,
    convert_linear_attenuation_to_bmd,
    convert_hu_to_bmd,
)


class TestBoneMineralDensity(unittest.TestCase):
    def test_convert_to_bmd_from_bmd(self):
        array = np.ones((5, 5, 5), dtype=float)

        mean = array.mean()
        std = array.std()

        result_mean, result_std = bmd(sitk.GetImageFromArray(array), "bmd", 0, 0, 0, 0)

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)

    def test_convert_to_bmd_from_scanco(self):
        array = np.ones((5, 5, 5), dtype=float)

        scanco_array = convert_scanco_to_bmd(array, 1, 1, 1)
        mean = scanco_array.mean()
        std = scanco_array.std()

        result_mean, result_std = bmd(
            sitk.GetImageFromArray(array), "scanco", 1, 0, 1, 1
        )

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)

    def test_convert_to_bmd_from_attenuation(self):
        array = np.ones((5, 5, 5), dtype=float)

        attenuation_array = convert_linear_attenuation_to_bmd(array, 1, 1)
        mean = attenuation_array.mean()
        std = attenuation_array.std()

        result_mean, result_std = bmd(
            sitk.GetImageFromArray(array), "attenuation", 0, 0, 1, 1
        )

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)

    def test_convert_to_bmd_from_hu(self):
        array = np.ones((5, 5, 5), dtype=float)

        hu_array = convert_hu_to_bmd(array, 1, 1, 1)
        mean = hu_array.mean()
        std = hu_array.std()

        result_mean, result_std = bmd(sitk.GetImageFromArray(array), "hu", 0, 1, 1, 1)

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)
