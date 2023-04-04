"""
test_file_reader.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test the file reader.
"""

import os
import unittest
import SimpleITK as sitk

from ormir_xct.util.file_reader import file_reader


class TestFileReader(unittest.TestCase):

    filenames = [
        "test_aim",
        "test_isq",
        "test_nii",
        "test_mha",
        "test_nrrd",
        "test_dicom",
    ]

    path = os.getcwd()
    parent = os.path.dirname(path)
    filepath = os.path.join(parent, "data")

    def test_file_read_aim(self):
        aim_path = os.path.join(self.filepath, self.filenames[0] + ".AIM")
        self.assertTrue(os.path.isfile(aim_path))

        aim_image = file_reader(aim_path)
        expected = type(sitk.Image())
        self.assertEqual(type(aim_image), expected)

    def test_file_read_isq(self):
        isq_path = os.path.join(self.filepath, self.filenames[1] + ".ISQ")
        self.assertTrue(os.path.isfile(isq_path))

        isq_image = file_reader(isq_path)
        expected = type(sitk.Image())
        self.assertEqual(type(isq_image), expected)

    def test_file_read_nii(self):
        nii_path = os.path.join(self.filepath, self.filenames[2] + ".nii")
        self.assertTrue(os.path.isfile(nii_path))

        nii_image = file_reader(nii_path)
        expected = type(sitk.Image())
        self.assertEqual(type(nii_image), expected)

    def test_file_read_mha(self):
        mha_path = os.path.join(self.filepath, self.filenames[3] + ".mha")
        self.assertTrue(os.path.isfile(mha_path))

        mha_image = file_reader(mha_path)
        expected = type(sitk.Image())
        self.assertEqual(type(mha_image), expected)

    def test_file_read_nrrd(self):
        nrrd_path = os.path.join(self.filepath, self.filenames[4] + ".nrrd")
        self.assertTrue(os.path.isfile(nrrd_path))

        nrrd_image = file_reader(nrrd_path)
        expected = type(sitk.Image())
        self.assertEqual(type(nrrd_image), expected)
