"""
test_file_converter.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test file type conversion.
"""

import os
import itk
import shutil
import tempfile
import unittest
import SimpleITK as sitk

from ormir_xct.util.sitk_itk import itk_sitk
from ormir_xct.util.file_converter import file_converter


class TestFileConverter(unittest.TestCase):
    def setUp(self):
        self.filenames = [
            "test_aim",
            "test_isq",
            "test_nii",
            "test_mha",
            "test_nrrd",
            "test_dicom",
        ]

        self.path = os.getcwd()
        self.parent = os.path.dirname(self.path)
        self.filepath = os.path.join(self.parent, "data")

        # Create a temp directory
        self.test_dir = tempfile.mkdtemp()

        # Paths for test files
        # Input images
        self.test_aim = os.path.join(self.filepath, self.filenames[0] + ".AIM")
        self.test_isq = os.path.join(self.filepath, self.filenames[1] + ".ISQ")
        self.test_nii = os.path.join(self.filepath, self.filenames[2] + ".nii")
        self.test_mha = os.path.join(self.filepath, self.filenames[3] + ".mha")
        self.test_nrrd = os.path.join(self.filepath, self.filenames[4] + ".nrrd")
        self.test_dcm = os.path.join(self.filepath, self.filenames[5])

        # Output images
        # AIM conversion
        self.test_aim_temp = os.path.join(self.test_dir, self.filenames[0] + ".AIM")
        self.test_aim_to_isq_temp = os.path.join(
            self.test_dir, self.filenames[0] + ".ISQ"
        )
        self.test_aim_to_nii_temp = os.path.join(
            self.test_dir, self.filenames[0] + ".nii"
        )
        self.test_aim_to_mha_temp = os.path.join(
            self.test_dir, self.filenames[0] + ".mha"
        )
        self.test_aim_to_nrrd_temp = os.path.join(
            self.test_dir, self.filenames[0] + ".nrrd"
        )
        self.test_aim_to_dcm_temp = os.path.join(self.test_dir, self.filenames[0])
        os.mkdir(self.test_aim_to_dcm_temp)

        # ISQ conversion
        self.test_isq_temp = os.path.join(self.test_dir, self.filenames[1] + ".ISQ")
        self.test_isq_to_aim_temp = os.path.join(
            self.test_dir, self.filenames[1] + ".AIM"
        )
        self.test_isq_to_nii_temp = os.path.join(
            self.test_dir, self.filenames[1] + ".nii"
        )
        self.test_isq_to_mha_temp = os.path.join(
            self.test_dir, self.filenames[1] + ".mha"
        )
        self.test_isq_to_nrrd_temp = os.path.join(
            self.test_dir, self.filenames[1] + ".nrrd"
        )
        self.test_isq_to_dcm_temp = os.path.join(self.test_dir, self.filenames[1])
        os.mkdir(self.test_isq_to_dcm_temp)

        # NIFTI conversion
        self.test_nii_temp = os.path.join(self.test_dir, self.filenames[2] + ".nii")
        self.test_nii_to_isq_temp = os.path.join(
            self.test_dir, self.filenames[2] + ".ISQ"
        )
        self.test_nii_to_mha_temp = os.path.join(
            self.test_dir, self.filenames[2] + ".mha"
        )
        self.test_nii_to_nrrd_temp = os.path.join(
            self.test_dir, self.filenames[2] + ".nrrd"
        )
        self.test_nii_to_dcm_temp = os.path.join(self.test_dir, self.filenames[2])
        os.mkdir(self.test_nii_to_dcm_temp)

        # MHA conversion
        self.test_mha_temp = os.path.join(self.test_dir, self.filenames[3] + ".mha")
        self.test_mha_to_isq_temp = os.path.join(
            self.test_dir, self.filenames[3] + ".ISQ"
        )
        self.test_mha_to_nii_temp = os.path.join(
            self.test_dir, self.filenames[3] + ".nii"
        )
        self.test_mha_to_nrrd_temp = os.path.join(
            self.test_dir, self.filenames[3] + ".nrrd"
        )
        self.test_mha_to_dcm_temp = os.path.join(self.test_dir, self.filenames[3])
        os.mkdir(self.test_mha_to_dcm_temp)

        # NRRD conversion
        self.test_nrrd_temp = os.path.join(self.test_dir, self.filenames[4] + ".nrrd")
        self.test_nrrd_to_isq_temp = os.path.join(
            self.test_dir, self.filenames[4] + ".ISQ"
        )
        self.test_nrrd_to_nii_temp = os.path.join(
            self.test_dir, self.filenames[4] + ".nii"
        )
        self.test_nrrd_to_mha_temp = os.path.join(
            self.test_dir, self.filenames[4] + ".mha"
        )
        self.test_nrrd_to_dcm_temp = os.path.join(self.test_dir, self.filenames[4])
        os.mkdir(self.test_nrrd_to_dcm_temp)

        # DICOM conversion
        self.test_dcm_temp = os.path.join(self.test_dir, self.filenames[5])
        self.test_dcm_to_isq_temp = os.path.join(
            self.test_dir, self.filenames[5] + ".ISQ"
        )
        self.test_dcm_to_nii_temp = os.path.join(
            self.test_dir, self.filenames[5] + ".nii"
        )
        self.test_dcm_to_mha_temp = os.path.join(
            self.test_dir, self.filenames[5] + ".mha"
        )
        self.test_dcm_to_nrrd_temp = os.path.join(
            self.test_dir, self.filenames[5] + ".nrrd"
        )

        # Copy test data to temp directory
        shutil.copy(self.test_aim, self.test_aim_temp)
        shutil.copy(self.test_isq, self.test_isq_temp)
        shutil.copy(self.test_nii, self.test_nii_temp)
        shutil.copy(self.test_mha, self.test_mha_temp)
        shutil.copy(self.test_nrrd, self.test_nrrd_temp)
        shutil.copytree(self.test_dcm, self.test_dcm_temp)

        self.assertTrue(os.path.isfile(self.test_aim_temp))
        self.assertTrue(os.path.isfile(self.test_isq_temp))
        self.assertTrue(os.path.isfile(self.test_nii_temp))
        self.assertTrue(os.path.isfile(self.test_mha_temp))
        self.assertTrue(os.path.isfile(self.test_nrrd_temp))
        self.assertTrue(os.path.isdir(self.test_dcm_temp))
        self.assertTrue(os.path.isdir(self.test_aim_to_dcm_temp))
        self.assertTrue(os.path.isdir(self.test_isq_to_dcm_temp))
        self.assertTrue(os.path.isdir(self.test_nii_to_dcm_temp))
        self.assertTrue(os.path.isdir(self.test_mha_to_dcm_temp))
        self.assertTrue(os.path.isdir(self.test_nrrd_to_dcm_temp))

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

    def test_aim_to_isq(self):
        """
        Test the conversion of Scanco AIM to ISQ using ITKIOScanco.
        """
        extension = os.path.splitext(self.test_aim_to_isq_temp)[1]
        self.assertTrue(extension.lower() == ".isq")

        file_converter(self.test_aim_temp, self.test_aim_to_isq_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        aim_reader = itk.ImageFileReader[image_type].New()
        aim_reader.SetImageIO(image_io)
        aim_reader.SetFileName(self.test_aim_temp)
        aim_reader.Update()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_aim_to_isq_temp)
        isq_reader.Update()

        sitk_aim = itk_sitk(aim_reader.GetOutput())
        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_isq.SetOrigin(sitk_aim.GetOrigin())

        self.spacing_check(sitk_aim, sitk_isq)
        self.dimension_check(sitk_aim, sitk_isq)
        self.position_check(sitk_aim, sitk_isq)
        self.direction_check(sitk_aim, sitk_isq)

    def test_aim_to_nii(self):
        """
        Test the conversion of Scanco AIM to NIFTI using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_aim_to_nii_temp)[1]
        self.assertTrue(extension.lower() == ".nii")

        file_converter(self.test_aim_temp, self.test_aim_to_nii_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        aim_reader = itk.ImageFileReader[image_type].New()
        aim_reader.SetImageIO(image_io)
        aim_reader.SetFileName(self.test_aim_temp)
        aim_reader.Update()

        sitk_aim = itk_sitk(aim_reader.GetOutput())
        sitk_nii = sitk.ReadImage(self.test_aim_to_nii_temp)

        self.spacing_check(sitk_aim, sitk_nii)
        self.dimension_check(sitk_aim, sitk_nii)
        self.position_check(sitk_aim, sitk_nii)
        self.direction_check(sitk_aim, sitk_nii)

    def test_aim_to_mha(self):
        """
        Test the conversion of Scanco AIM to MHA using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_aim_to_mha_temp)[1]
        self.assertTrue(extension.lower() == ".mha")

        file_converter(self.test_aim_temp, self.test_aim_to_mha_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        aim_reader = itk.ImageFileReader[image_type].New()
        aim_reader.SetImageIO(image_io)
        aim_reader.SetFileName(self.test_aim_temp)
        aim_reader.Update()

        sitk_aim = itk_sitk(aim_reader.GetOutput())
        sitk_mha = sitk.ReadImage(self.test_aim_to_mha_temp)

        self.spacing_check(sitk_aim, sitk_mha)
        self.dimension_check(sitk_aim, sitk_mha)
        self.position_check(sitk_aim, sitk_mha)
        self.direction_check(sitk_aim, sitk_mha)

    def test_aim_to_nrrd(self):
        """
        Test the conversion of Scanco AIM to NRRD using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_aim_to_nrrd_temp)[1]
        self.assertTrue(extension.lower() == ".nrrd")

        file_converter(self.test_aim_temp, self.test_aim_to_nrrd_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        aim_reader = itk.ImageFileReader[image_type].New()
        aim_reader.SetImageIO(image_io)
        aim_reader.SetFileName(self.test_aim_temp)
        aim_reader.Update()

        sitk_aim = itk_sitk(aim_reader.GetOutput())
        sitk_nrrd = sitk.ReadImage(self.test_aim_to_nrrd_temp)

        self.spacing_check(sitk_aim, sitk_nrrd)
        self.dimension_check(sitk_aim, sitk_nrrd)
        self.position_check(sitk_aim, sitk_nrrd)
        self.direction_check(sitk_aim, sitk_nrrd)

    def test_aim_to_dicom(self):
        """
        Test the conversion of Scanco AIM to DICOM using ITKIOScanco and SimpleITK.
        """
        file_converter(self.test_aim_temp, self.test_aim_to_dcm_temp + ".dcm")

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        aim_reader = itk.ImageFileReader[image_type].New()
        aim_reader.SetImageIO(image_io)
        aim_reader.SetFileName(self.test_aim_temp)
        aim_reader.Update()

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(
            os.path.join(self.test_dir, "dcm")
        )
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_aim = itk_sitk(aim_reader.GetOutput())

        self.spacing_check(sitk_aim, sitk_dcm)
        self.dimension_check(sitk_aim, sitk_dcm)
        self.position_check(sitk_aim, sitk_dcm)
        self.direction_check(sitk_aim, sitk_dcm)

    def test_isq_to_nii(self):
        """
        Test the conversion of Scanco ISQ to NIFTI using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_isq_to_nii_temp)[1]
        self.assertTrue(extension.lower() == ".nii")

        file_converter(self.test_isq_temp, self.test_isq_to_nii_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_isq_temp)
        isq_reader.Update()

        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_nii = sitk.ReadImage(self.test_isq_to_nii_temp)

        self.spacing_check(sitk_isq, sitk_nii)
        self.dimension_check(sitk_isq, sitk_nii)
        self.position_check(sitk_isq, sitk_nii)
        self.direction_check(sitk_isq, sitk_nii)

    def test_isq_to_mha(self):
        """
        Test the conversion of Scanco ISQ to MHA using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_isq_to_mha_temp)[1]
        self.assertTrue(extension.lower() == ".mha")

        file_converter(self.test_isq_temp, self.test_isq_to_mha_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_isq_temp)
        isq_reader.Update()

        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_mha = sitk.ReadImage(self.test_isq_to_mha_temp)

        self.spacing_check(sitk_isq, sitk_mha)
        self.dimension_check(sitk_isq, sitk_mha)
        self.position_check(sitk_isq, sitk_mha)
        self.direction_check(sitk_isq, sitk_mha)

    def test_isq_to_nrrd(self):
        """
        Test the conversion of Scanco ISQ to NRRD using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_isq_to_nrrd_temp)[1]
        self.assertTrue(extension.lower() == ".nrrd")

        file_converter(self.test_isq_temp, self.test_isq_to_nrrd_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_isq_temp)
        isq_reader.Update()

        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_nrrd = sitk.ReadImage(self.test_isq_to_nrrd_temp)

        self.spacing_check(sitk_isq, sitk_nrrd)
        self.dimension_check(sitk_isq, sitk_nrrd)
        self.position_check(sitk_isq, sitk_nrrd)
        self.direction_check(sitk_isq, sitk_nrrd)

    def test_isq_to_dicom(self):
        """
        Test the conversion of Scanco ISQ to DICOM using ITKIOScanco and SimpleITK.
        """
        file_converter(self.test_isq_temp, self.test_isq_to_dcm_temp + ".dcm")

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_isq_temp)
        isq_reader.Update()

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(
            os.path.join(self.test_dir, "dcm")
        )
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_isq = itk_sitk(isq_reader.GetOutput())

        self.spacing_check(sitk_isq, sitk_dcm)
        self.dimension_check(sitk_isq, sitk_dcm)
        self.position_check(sitk_isq, sitk_dcm)
        self.direction_check(sitk_isq, sitk_dcm)

    def test_nii_to_isq(self):
        """
        Test the conversion of Scanco NII to ISQ using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_nii_to_isq_temp)[1]
        self.assertTrue(extension.lower() == ".isq")

        file_converter(self.test_nii_temp, self.test_nii_to_isq_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_nii_to_isq_temp)
        isq_reader.Update()

        sitk_nii = sitk.ReadImage(self.test_nii_temp)
        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_isq.SetOrigin(sitk_nii.GetOrigin())

        self.spacing_check(sitk_nii, sitk_isq)
        self.dimension_check(sitk_nii, sitk_isq)
        self.position_check(sitk_nii, sitk_isq)
        self.direction_check(sitk_nii, sitk_isq)

    def test_nii_to_mha(self):
        """
        Test the conversion of Scanco NII to MHA using SimpleITK.
        """
        extension = os.path.splitext(self.test_nii_to_mha_temp)[1]
        self.assertTrue(extension.lower() == ".mha")

        file_converter(self.test_nii_temp, self.test_nii_to_mha_temp)

        sitk_nii = sitk.ReadImage(self.test_nii_temp)
        sitk_mha = sitk.ReadImage(self.test_nii_to_mha_temp)

        self.spacing_check(sitk_nii, sitk_mha)
        self.dimension_check(sitk_nii, sitk_mha)
        self.position_check(sitk_nii, sitk_mha)
        self.direction_check(sitk_nii, sitk_mha)

    def test_nii_to_nrrd(self):
        """
        Test the conversion of Scanco NII to NRRD using SimpleITK.
        """
        extension = os.path.splitext(self.test_nii_to_nrrd_temp)[1]
        self.assertTrue(extension.lower() == ".nrrd")

        file_converter(self.test_nii_temp, self.test_nii_to_nrrd_temp)

        sitk_nii = sitk.ReadImage(self.test_nii_temp)
        sitk_nrrd = sitk.ReadImage(self.test_nii_to_nrrd_temp)

        self.spacing_check(sitk_nii, sitk_nrrd)
        self.dimension_check(sitk_nii, sitk_nrrd)
        self.position_check(sitk_nii, sitk_nrrd)
        self.direction_check(sitk_nii, sitk_nrrd)

    def test_nii_to_dicom(self):
        """
        Test the conversion of Scanco NII to DICOM using SimpleITK.
        """
        file_converter(self.test_nii_temp, self.test_nii_to_dcm_temp + ".dcm")

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(
            os.path.join(self.test_dir, "dcm")
        )
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_nii = sitk.ReadImage(self.test_nii_temp)

        self.spacing_check(sitk_nii, sitk_dcm)
        self.dimension_check(sitk_nii, sitk_dcm)
        self.position_check(sitk_nii, sitk_dcm)
        self.direction_check(sitk_nii, sitk_dcm)

    def test_mha_to_isq(self):
        """
        Test the conversion of Scanco MHA to ISQ using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_mha_to_isq_temp)[1]
        self.assertTrue(extension.lower() == ".isq")

        file_converter(self.test_mha_temp, self.test_mha_to_isq_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_mha_to_isq_temp)
        isq_reader.Update()

        sitk_mha = sitk.ReadImage(self.test_mha_temp)
        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_isq.SetOrigin(sitk_mha.GetOrigin())

        self.spacing_check(sitk_mha, sitk_isq)
        self.dimension_check(sitk_mha, sitk_isq)
        self.position_check(sitk_mha, sitk_isq)
        self.direction_check(sitk_mha, sitk_isq)

    def test_mha_to_nii(self):
        """
        Test the conversion of Scanco MHA to NII using SimpleITK.
        """
        extension = os.path.splitext(self.test_mha_to_nii_temp)[1]
        self.assertTrue(extension.lower() == ".nii")

        file_converter(self.test_mha_temp, self.test_mha_to_nii_temp)

        sitk_mha = sitk.ReadImage(self.test_mha_temp)
        sitk_nii = sitk.ReadImage(self.test_mha_to_nii_temp)

        self.spacing_check(sitk_mha, sitk_nii)
        self.dimension_check(sitk_mha, sitk_nii)
        self.position_check(sitk_mha, sitk_nii)
        self.direction_check(sitk_mha, sitk_nii)

    def test_mha_to_nrrd(self):
        """
        Test the conversion of Scanco MHA to NRRD using SimpleITK.
        """
        extension = os.path.splitext(self.test_mha_to_nrrd_temp)[1]
        self.assertTrue(extension.lower() == ".nrrd")

        file_converter(self.test_mha_temp, self.test_mha_to_nrrd_temp)

        sitk_mha = sitk.ReadImage(self.test_mha_temp)
        sitk_nrrd = sitk.ReadImage(self.test_mha_to_nrrd_temp)

        self.spacing_check(sitk_mha, sitk_nrrd)
        self.dimension_check(sitk_mha, sitk_nrrd)
        self.position_check(sitk_mha, sitk_nrrd)
        self.direction_check(sitk_mha, sitk_nrrd)

    def test_mha_to_dicom(self):
        """
        Test the conversion of Scanco MHA to DICOM using SimpleITK.
        """
        file_converter(self.test_mha_temp, self.test_mha_to_dcm_temp + ".dcm")

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(
            os.path.join(self.test_dir, "dcm")
        )
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_mha = sitk.ReadImage(self.test_mha_temp)

        self.spacing_check(sitk_mha, sitk_dcm)
        self.dimension_check(sitk_mha, sitk_dcm)
        self.position_check(sitk_mha, sitk_dcm)
        self.direction_check(sitk_mha, sitk_dcm)

    def test_nrrd_to_isq(self):
        """
        Test the conversion of Scanco NRRD to ISQ using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_nrrd_to_isq_temp)[1]
        self.assertTrue(extension.lower() == ".isq")

        file_converter(self.test_nrrd_temp, self.test_nrrd_to_isq_temp)

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_nrrd_to_isq_temp)
        isq_reader.Update()

        sitk_nrrd = sitk.ReadImage(self.test_nrrd_temp)
        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_isq.SetOrigin(sitk_nrrd.GetOrigin())

        self.spacing_check(sitk_nrrd, sitk_isq)
        self.dimension_check(sitk_nrrd, sitk_isq)
        self.position_check(sitk_nrrd, sitk_isq)
        self.direction_check(sitk_nrrd, sitk_isq)

    def test_nrrd_to_nii(self):
        """
        Test the conversion of Scanco NRRD to NII using SimpleITK.
        """
        extension = os.path.splitext(self.test_nrrd_to_nii_temp)[1]
        self.assertTrue(extension.lower() == ".nii")

        file_converter(self.test_nrrd_temp, self.test_nrrd_to_nii_temp)

        sitk_nrrd = sitk.ReadImage(self.test_nrrd_temp)
        sitk_nii = sitk.ReadImage(self.test_nrrd_to_nii_temp)

        self.spacing_check(sitk_nrrd, sitk_nii)
        self.dimension_check(sitk_nrrd, sitk_nii)
        self.position_check(sitk_nrrd, sitk_nii)
        self.direction_check(sitk_nrrd, sitk_nii)

    def test_nrrd_to_mha(self):
        """
        Test the conversion of Scanco NRRD to MHA using SimpleITK.
        """
        extension = os.path.splitext(self.test_nrrd_to_mha_temp)[1]
        self.assertTrue(extension.lower() == ".mha")

        file_converter(self.test_nrrd_temp, self.test_nrrd_to_mha_temp)

        sitk_nrrd = sitk.ReadImage(self.test_nrrd_temp)
        sitk_mha = sitk.ReadImage(self.test_nrrd_to_mha_temp)

        self.spacing_check(sitk_nrrd, sitk_mha)
        self.dimension_check(sitk_nrrd, sitk_mha)
        self.position_check(sitk_nrrd, sitk_mha)
        self.direction_check(sitk_nrrd, sitk_mha)

    def test_nrrd_to_dicom(self):
        """
        Test the conversion of Scanco NRRD to DICOM using SimpleITK.
        """
        file_converter(self.test_nrrd_temp, self.test_nrrd_to_dcm_temp + ".dcm")

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(
            os.path.join(self.test_dir, "dcm")
        )
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_nrrd = sitk.ReadImage(self.test_nrrd_temp)

        self.spacing_check(sitk_nrrd, sitk_dcm)
        self.dimension_check(sitk_nrrd, sitk_dcm)
        self.position_check(sitk_nrrd, sitk_dcm)
        self.direction_check(sitk_nrrd, sitk_dcm)

    def test_dicom_to_isq(self):
        """
        Test the conversion of DICOM to ISQ using ITKIOScanco and SimpleITK.
        """
        extension = os.path.splitext(self.test_dcm_to_isq_temp)[1]
        self.assertTrue(extension.lower() == ".isq")

        file_converter(self.test_dcm_temp, self.test_dcm_to_isq_temp)

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(self.test_dcm_temp)
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()
        print(type(sitk_dcm))

        image_type = itk.Image[itk.ctype("signed short"), 3]
        image_io = itk.ScancoImageIO.New()

        isq_reader = itk.ImageFileReader[image_type].New()
        isq_reader.SetImageIO(image_io)
        isq_reader.SetFileName(self.test_dcm_to_isq_temp)
        isq_reader.Update()

        sitk_isq = itk_sitk(isq_reader.GetOutput())
        sitk_isq.SetOrigin(sitk_dcm.GetOrigin())

        self.spacing_check(sitk_dcm, sitk_isq)
        self.dimension_check(sitk_dcm, sitk_isq)
        self.position_check(sitk_dcm, sitk_isq)
        self.direction_check(sitk_dcm, sitk_isq)

    def test_dicom_to_nii(self):
        """
        Test the conversion of DICOM to NII using SimpleITK.
        """
        extension = os.path.splitext(self.test_dcm_to_nii_temp)[1]
        self.assertTrue(extension.lower() == ".nii")

        file_converter(self.test_dcm_temp, self.test_dcm_to_nii_temp)

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(self.test_dcm_temp)
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_nii = sitk.ReadImage(self.test_dcm_to_nii_temp)
        sitk_nii.SetOrigin(sitk_dcm.GetOrigin())

        self.spacing_check(sitk_dcm, sitk_nii)
        self.dimension_check(sitk_dcm, sitk_nii)
        self.position_check(sitk_dcm, sitk_nii)
        self.direction_check(sitk_dcm, sitk_nii)

    def test_dicom_to_mha(self):
        """
        Test the conversion of DICOM to MHA using SimpleITK.
        """
        extension = os.path.splitext(self.test_dcm_to_mha_temp)[1]
        self.assertTrue(extension.lower() == ".mha")

        file_converter(self.test_dcm_temp, self.test_dcm_to_mha_temp)

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(self.test_dcm_temp)
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_mha = sitk.ReadImage(self.test_dcm_to_mha_temp)
        sitk_mha.SetOrigin(sitk_dcm.GetOrigin())

        self.spacing_check(sitk_dcm, sitk_mha)
        self.dimension_check(sitk_dcm, sitk_mha)
        self.position_check(sitk_dcm, sitk_mha)
        self.direction_check(sitk_dcm, sitk_mha)

    def test_dicom_to_nrrd(self):
        """
        Test the conversion of DICOM to NRRD using SimpleITK.
        """
        extension = os.path.splitext(self.test_dcm_to_nrrd_temp)[1]
        self.assertTrue(extension.lower() == ".nrrd")

        file_converter(self.test_dcm_temp, self.test_dcm_to_nrrd_temp)

        dcm_reader = sitk.ImageSeriesReader()
        dicom_names = dcm_reader.GetGDCMSeriesFileNames(self.test_dcm_temp)
        dcm_reader.SetFileNames(dicom_names)
        sitk_dcm = dcm_reader.Execute()

        sitk_nrrd = sitk.ReadImage(self.test_dcm_to_nrrd_temp)
        sitk_nrrd.SetOrigin(sitk_dcm.GetOrigin())

        self.spacing_check(sitk_dcm, sitk_nrrd)
        self.dimension_check(sitk_dcm, sitk_nrrd)
        self.position_check(sitk_dcm, sitk_nrrd)
        self.direction_check(sitk_dcm, sitk_nrrd)
