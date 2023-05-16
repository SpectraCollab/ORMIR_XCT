"""
test_scanco_rescale.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test rescaling between image units.
"""

import unittest
import numpy as np
import SimpleITK as sitk

from ormir_xct.util.scanco_rescale import (
    convert_scanco_to_linear_attenuation, convert_scanco_to_hu,
    convert_scanco_to_bmd, convert_hu_to_linear_attenuation,
    convert_hu_to_scanco, convert_hu_to_bmd,
    convert_linear_attenuation_to_hu, convert_linear_attenuation_to_scanco, 
    convert_linear_attenuation_to_bmd
) 

def create_test_image(dimensions, value):
    """
    Creates a SimpleITK image containing a single value of given dimension.
    """
    array = np.full(dimensions, value)
    image = sitk.GetImageFromArray(array)
    image = sitk.Cast(image, sitk.sitkFloat32)
    return image


class TestScancoRescale(unittest.TestCase):

    def test_scanco_to_linear_attenuation(self):
        # LinearAttenuation = ScancoUnits / mu_scaling
        test_image = create_test_image((10, 10, 10), 8192)
        expected_image = create_test_image((10, 10, 10), 1)
        mu_scaling = 8192
        result_image = convert_scanco_to_linear_attenuation(test_image, mu_scaling)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_scanco_to_hu(self):
        # 1. LinearAttenuation = ScancoUnits / mu_scaling
        # 2. HU = -1000 + LinearAttenuation * (1000 / mu_water)
        test_image = create_test_image((10, 10, 10), 8192)
        expected_image = create_test_image((10, 10, 10), 1000)
        mu_scaling = 8192
        mu_water = 0.5
        result_image = convert_scanco_to_hu(test_image, mu_scaling, mu_water)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_scanco_to_bmd(self):
        # 1. LinearAttenuation = ScancoUnits / mu_scaling
        # 2. BMD = LinearAttenuation * rescale_slope + rescale_intercept
        test_image = create_test_image((10, 10, 10), 8192)
        expected_image = create_test_image((10, 10, 10), 10)
        mu_scaling = 8192
        rescale_slope = 9
        rescale_intercept = 1
        result_image = convert_scanco_to_bmd(test_image, mu_scaling, rescale_slope, rescale_intercept)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_hu_to_linear_attenuation(self):
        # LinearAttenuation = (HU + 1000) * (mu_water / 1000)
        test_image = create_test_image((10, 10, 10), 1000)
        expected_image = create_test_image((10, 10, 10), 1)
        mu_water = 0.5
        result_image = convert_hu_to_linear_attenuation(test_image, mu_water)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_hu_to_scanco(self):
        # 1. LinearAttenuation = (HU + 1000) * (mu_water / 1000)
        # 2. ScancoUnits = LinearAttenuation * mu_scaling
        test_image = create_test_image((10, 10, 10), 1000)
        expected_image = create_test_image((10, 10, 10), 8192)
        mu_water = 0.5
        mu_scaling = 8192
        result_image = convert_hu_to_scanco(test_image, mu_water, mu_scaling)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_hu_to_bmd(self):
        # 1. LinearAttenuation = (HU + 1000) * (mu_water / 1000)
        # 2. BMD = LinearAttenuation * rescale_slope + rescale_intercept
        test_image = create_test_image((10, 10, 10), 1000)
        expected_image = create_test_image((10, 10, 10), 2)
        mu_water = 0.5
        rescale_slope = 1
        rescale_intercept = 1
        result_image = convert_hu_to_bmd(test_image, mu_water, rescale_slope, rescale_intercept)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_linear_attenuation_to_hu(self):
        # HU = LinearAttenuation * (1000 / mu_water) - 1000
        test_image = create_test_image((10, 10, 10), 1)
        expected_image = create_test_image((10, 10, 10), 1000)
        mu_water = 0.5
        result_image = convert_linear_attenuation_to_hu(test_image, mu_water)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_linear_attenuation_to_scanco(self):
        # ScancoUnits = LinearAttenuation * mu_scaling
        test_image = create_test_image((10, 10, 10), 1)
        expected_image = create_test_image((10, 10, 10), 8192)
        mu_scaling = 8192
        result_image = convert_linear_attenuation_to_scanco(test_image, mu_scaling)
        np.testing.assert_array_equal(expected_image, result_image)

    def test_linear_attenuation_to_bmd(self):
        # BMD = LinearAttenuation * rescale_slope + rescale_intercept
        test_image = create_test_image((10, 10, 10), 1)
        expected_image = create_test_image((10, 10, 10), 8192)
        rescale_slope = 8191
        rescale_intercept = 1
        result_image = convert_linear_attenuation_to_bmd(test_image, rescale_slope, rescale_intercept)
        np.testing.assert_array_equal(expected_image, result_image)