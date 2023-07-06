"""
test_autocontour.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test automatic periosteal contour.
"""

import os
import shutil
import tempfile
import unittest
import numpy as np
import SimpleITK as sitk

from ormir_xct.autocontour.autocontour import autocontour

class TestAutocontour(unittest.TestCase):

    def setUp(self):
        self.true_mask_filename = "test_joint_mask.nii"
        self.true_image_filename = "test_joint.nii"
        self.path = os.getcwd()
        self.parent = os.path.dirname(self.path)
        self.filepath = os.path.join(self.parent, "data")

        # Create a temp directory
        self.test_dir = tempfile.mkdtemp()

        # Filepath for test data
        self.true_joint_image = os.path.join(self.filepath, self.true_image_filename)
        self.true_joint_mask = os.path.join(self.filepath, self.true_mask_filename)

        # Create a test joint image that is a copy
        self.test_image = os.path.join(self.test_dir, self.true_image_filename)

        # Copy test data to temp directory
        shutil.copy(self.true_joint_image, self.test_image)

        self.assertTrue(os.path.isfile(self.test_image))

    def tearDown(self):
        shutil.rmtree(self.test_dir)

    def spacing_check(self, input_image, output_image):
        input_spacing = input_image.GetSpacing()
        output_spacing = output_image.GetSpacing()

        self.assertAlmostEqual(input_spacing[0], output_spacing[0], 4)
        self.assertAlmostEqual(input_spacing[1], output_spacing[1], 4)
        self.assertAlmostEqual(input_spacing[2], output_spacing[2], 4)

    def dimension_check(self, input_image, output_image):
        input_size = input_image.GetSize()
        output_size = output_image.GetSize()

        self.assertAlmostEqual(input_size[0], output_size[0], 4)
        self.assertAlmostEqual(input_size[1], output_size[1], 4)
        self.assertAlmostEqual(input_size[2], output_size[2], 4)

    def position_check(self, input_image, output_image):
        input_origin = input_image.GetOrigin()
        output_origin = output_image.GetOrigin()

        self.assertAlmostEqual(input_origin[0], output_origin[0], 4)
        self.assertAlmostEqual(input_origin[1], output_origin[1], 4)
        self.assertAlmostEqual(input_origin[2], output_origin[2], 4)

    def direction_check(self, input_image, output_image):
        input_direction = input_image.GetDirection()
        output_direction = output_image.GetDirection()

        self.assertAlmostEqual(input_direction[0], output_direction[0], 4)
        self.assertAlmostEqual(input_direction[1], output_direction[1], 4)
        self.assertAlmostEqual(input_direction[2], output_direction[2], 4)

    def test_autocontour(self):
        true_joint_mask = sitk.ReadImage(self.true_joint_mask, sitk.sitkUInt8)
        test_joint_image = sitk.ReadImage(self.test_image, sitk.sitkFloat32)
        dst_mask, prx_mask, mask = autocontour(test_joint_image)

        self.spacing_check(true_joint_mask, mask)
        self.dimension_check(true_joint_mask, mask)
        self.position_check(true_joint_mask, mask)
        self.direction_check(true_joint_mask, mask)

        test_mask_array = sitk.GetArrayFromImage(mask)
        true_mask_array = sitk.GetArrayFromImage(true_joint_mask)
        np.testing.assert_array_equal(true_mask_array, test_mask_array)
