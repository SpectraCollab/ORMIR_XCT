"""
test_bone_mineral_density_masked.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test BMD calculation using a provided mask.
"""

import unittest
import numpy as np
import SimpleITK as sitk
from ormir_xct.util.scanco_rescale import (
    convert_scanco_to_bmd, convert_linear_attenuation_to_bmd,
    convert_hu_to_bmd
    )
from ormir_xct.bone_mineral_density.bmd_masked import bmd_masked 

class TestBoneMineralDensityMasked(unittest.TestCase):

    def test_convert_to_bmd_from_bmd(self):
        array = np.ones((5,5,5), dtype=float)
        mask = np.zeros((5,5,5), dtype=float)
        mask[1:4, 1:4, 1:4] = 1

        masked_array = array * mask
        mean = masked_array[masked_array > 0].mean()
        std = masked_array[masked_array > 0].std()

        result_mean, result_std = bmd_masked(sitk.GetImageFromArray(array), sitk.GetImageFromArray(mask), "bmd", 0, 0, 0, 0)

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)
        
    def test_convert_to_bmd_from_scanco(self):
        array = np.ones((5,5,5), dtype=float)
        mask = np.zeros((5,5,5), dtype=float)
        mask[1:4, 1:4, 1:4] = 1

        scanco_array = convert_scanco_to_bmd(array, 1, 1, 1)
        masked_array = scanco_array * mask
        mean = masked_array[masked_array > 0].mean()
        std = masked_array[masked_array > 0].std()

        result_mean, result_std = bmd_masked(sitk.GetImageFromArray(array), sitk.GetImageFromArray(mask), "scanco", 1, 0, 1, 1)

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)

    def test_convert_to_bmd_from_attenuation(self):
        array = np.ones((5,5,5), dtype=float)
        mask = np.zeros((5,5,5), dtype=float)
        mask[1:4, 1:4, 1:4] = 1

        attenuation_array = convert_linear_attenuation_to_bmd(array, 1, 1)
        masked_array = attenuation_array * mask
        mean = masked_array[masked_array > 0].mean()
        std = masked_array[masked_array > 0].std()

        result_mean, result_std = bmd_masked(sitk.GetImageFromArray(array), sitk.GetImageFromArray(mask), "attenuation", 0, 0, 1, 1)

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)

    def test_convert_to_bmd_from_hu(self):
        array = np.ones((5,5,5), dtype=float)
        mask = np.zeros((5,5,5), dtype=float)
        mask[1:4, 1:4, 1:4] = 1

        hu_array = convert_hu_to_bmd(array, 1, 1, 1)
        masked_array = hu_array * mask
        mean = masked_array[masked_array > 0].mean()
        std = masked_array[masked_array > 0].std()

        result_mean, result_std = bmd_masked(sitk.GetImageFromArray(array), sitk.GetImageFromArray(mask), "hu", 0, 1, 1, 1)

        self.assertAlmostEqual(result_mean, mean, 8)
        self.assertAlmostEqual(result_std, std, 8)
