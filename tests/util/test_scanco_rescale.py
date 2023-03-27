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
    return image


class TestScancoRescale(unittest.TestCase):

    def test_scanco_to_linear_attenuation(self):
        # LinearAttenuation = ScancoUnits / mu_scaling
        test_image = create_test_image((10, 10, 10), 8192)
        expected_image = create_test_image((10, 10, 10), 1)
        mu_scaling = 8192
        result_image = convert_scanco_to_linear_attenuation(test_image)
        np.testing.assert_array_equal(expected_image, result_image)
        pass

    def test_scanco_to_hu(self):
        # 1. LinearAttenuation = ScancoUnits / mu_scaling
        # 2. HU = -1000 + LinearAttenuation * (1000 / mu_water)
        pass

    def test_scanco_to_bmd(self):
        # 1. LinearAttenuation = ScancoUnits / mu_scaling
        # 2. BMD = LinearAttenuation * rescale_slope + rescale_intercept
        pass

    def test_hu_to_linear_attenuation(self):
        # LinearAttenuation = (HU + 1000) * (mu_water / 1000)
        pass

    def test_hu_to_scanco(self):
        # 1. LinearAttenuation = (HU + 1000) * (mu_water / 1000)
        # 2. ScancoUnits = LinearAttenuation * mu_scaling
        pass

    def test_hu_to_bmd(self):
        # 1. LinearAttenuation = (HU + 1000) * (mu_water / 1000)
        # 2. BMD = LinearAttenuation * rescale_slope + rescale_intercept
        pass

    def test_linear_attenuation_to_hu(self):
        # HU = LinearAttenuation * (1000 / mu_water) - 1000
        pass

    def test_linear_attenuation_to_scanco(self):
        # ScancoUnits = LinearAttenuation * mu_scaling
        pass

    def test_linear_attenuation_to_bmd(self):
        # BMD = LinearAttenuation * rescale_slope + rescale_intercept
        pass