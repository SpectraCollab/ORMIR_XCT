"""
test_itk_sitk_conversion.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test conversion between ITK and SimpleITK.
"""

import itk
import unittest
import numpy as np
import SimpleITK as sitk

from ormir_xct.util.sitk_itk import sitk_itk, itk_sitk


def create_test_image(dimensions, value):
    """
    Creates a numpy array containing a single value of given dimension.
    """
    array = np.full(dimensions, value, np.int32)
    return array


class TestSITKToITKConversion(unittest.TestCase):
    def spacing_check(self, input_image, output_image):
        input_spacing = input_image.GetSpacing()
        output_spacing = output_image.GetSpacing()

        self.assertAlmostEqual(input_spacing[0], output_spacing[0], 4)
        self.assertAlmostEqual(input_spacing[1], output_spacing[1], 4)
        self.assertAlmostEqual(input_spacing[2], output_spacing[2], 4)

    def dimension_check(self, input_image_np, output_image_np):
        input_size = input_image_np.shape
        output_size = output_image_np.shape

        self.assertEqual(input_size[0], output_size[0])
        self.assertEqual(input_size[1], output_size[1])
        self.assertEqual(input_size[2], output_size[2])

    def position_check(self, input_image, output_image):
        input_origin = input_image.GetOrigin()
        output_origin = output_image.GetOrigin()

        self.assertAlmostEqual(input_origin[0], output_origin[0], 4)
        self.assertAlmostEqual(input_origin[1], output_origin[1], 4)
        self.assertAlmostEqual(input_origin[2], output_origin[2], 4)

    def direction_check(self, direction1, direction2):
        self.assertEqual(direction1, direction2)

    def test_itk_to_sitk(self):
        test_image = itk.GetImageFromArray(create_test_image((10, 10, 10), 1))
        expected_image = sitk.GetImageFromArray(create_test_image((10, 10, 10), 1))

        result_image = itk_sitk(test_image)

        epected_image_np = sitk.GetArrayFromImage(expected_image)
        result_image_np = sitk.GetArrayFromImage(result_image)

        np.testing.assert_array_equal(expected_image, result_image)
        self.spacing_check(expected_image, result_image)
        self.dimension_check(epected_image_np, result_image_np)
        self.position_check(expected_image, result_image)

        expected_direction = expected_image.GetDirection()
        result_direction = result_image.GetDirection()
        self.direction_check(expected_direction, result_direction)

    def test_sitk_to_itk(self):
        expected_image = itk.GetImageFromArray(create_test_image((10, 10, 10), 1))
        test_image = sitk.GetImageFromArray(create_test_image((10, 10, 10), 1))

        result_image = sitk_itk(test_image)

        epected_image_np = itk.GetArrayFromImage(expected_image)
        result_image_np = itk.GetArrayFromImage(result_image)

        np.testing.assert_array_equal(expected_image, result_image)
        self.spacing_check(expected_image, result_image)
        self.dimension_check(epected_image_np, result_image_np)
        self.position_check(expected_image, result_image)

        expected_itk_direction = (
            expected_image.GetDirection()(0, 0),
            expected_image.GetDirection()(1, 0),
            expected_image.GetDirection()(2, 0),
            expected_image.GetDirection()(0, 1),
            expected_image.GetDirection()(0, 2),
            expected_image.GetDirection()(1, 1),
            expected_image.GetDirection()(1, 2),
            expected_image.GetDirection()(2, 1),
            expected_image.GetDirection()(2, 2),
        )
        result_itk_direction = (
            result_image.GetDirection()(0, 0),
            result_image.GetDirection()(1, 0),
            result_image.GetDirection()(2, 0),
            result_image.GetDirection()(0, 1),
            result_image.GetDirection()(0, 2),
            result_image.GetDirection()(1, 1),
            result_image.GetDirection()(1, 2),
            result_image.GetDirection()(2, 1),
            result_image.GetDirection()(2, 2),
        )
        self.direction_check(expected_itk_direction, result_itk_direction)
