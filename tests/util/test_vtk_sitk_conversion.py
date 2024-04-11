"""
test_vtk_sitk_conversion.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test conversion between VTK and SimpleITK.
"""

import vtk
import unittest
import numpy as np
import SimpleITK as sitk

from vtk.util.numpy_support import vtk_to_numpy, numpy_to_vtk
from ormir_xct.util.sitk_vtk import sitk_to_vtk, vtk_to_sitk


def create_test_image(dimensions, value):
    """
    Creates a numpy array containing a single value of given dimension.
    """
    array = np.full(dimensions, value, np.int16)
    return array


def create_vtk_image(dimensions, value):
    """
    Creates a VTK image containing a single value of given dimension.
    """
    data = create_test_image(dimensions, value)
    data_type = vtk.VTK_CHAR
    shape = data.shape

    flat_data_array = data.flatten()
    vtk_data = numpy_to_vtk(num_array=flat_data_array, deep=True, array_type=data_type)

    vtk_image = vtk.vtkImageData()
    vtk_image.GetPointData().SetScalars(vtk_data)
    vtk_image.SetDimensions(shape[0], shape[1], shape[2])

    return vtk_image


def vtk_image_to_numpy(vtk_image):
    """
    Converts a VTK image to a numpy array.
    """
    numpy_array = vtk_to_numpy(vtk_image.GetPointData().GetScalars())
    dims = vtk_image.GetDimensions()
    numpy_array = numpy_array.reshape(dims[2], dims[1], dims[0])
    numpy_array = numpy_array.transpose(2, 1, 0)

    return numpy_array


class TestSITKToVTKConversion(unittest.TestCase):
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

    def test_vtk_to_sitk(self):
        test_image = create_vtk_image((10, 10, 10), 1)

        expected_image = sitk.GetImageFromArray(create_test_image((10, 10, 10), 1))

        result_image = vtk_to_sitk(test_image)

        epected_image_np = sitk.GetArrayFromImage(expected_image)
        result_image_np = sitk.GetArrayFromImage(result_image)

        np.testing.assert_array_equal(expected_image, result_image)
        self.spacing_check(expected_image, result_image)
        self.dimension_check(epected_image_np, result_image_np)
        self.position_check(expected_image, result_image)

    def test_sitk_to_vtk(self):
        expected_image = create_vtk_image((10, 10, 10), 1)

        test_image = sitk.GetImageFromArray(create_test_image((10, 10, 10), 1))

        result_image = sitk_to_vtk(test_image)

        epected_image_np = vtk_image_to_numpy(expected_image)
        result_image_np = vtk_image_to_numpy(result_image)

        np.testing.assert_array_equal(epected_image_np, result_image_np)
        self.spacing_check(expected_image, result_image)
        self.dimension_check(epected_image_np, result_image_np)
        self.position_check(expected_image, result_image)
