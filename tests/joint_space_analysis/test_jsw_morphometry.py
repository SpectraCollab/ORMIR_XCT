import os
import shutil
import tempfile
import unittest
import numpy as np
import SimpleITK as sitk

from ormir_xct.joint_space_analysis.jsw_morphometry import (
    jsw_pad,
    jsw_dilate,
    jsw_erode,
    jsw_parameters,
    MISC2,
    CALC,
)


def create_plate_mask(shape, voxel_width, radius):
    """
    Creates a binary NumPy plate with given radius and voxel size.
    """
    center = (
        voxel_width[0] * (shape[0] // 2),
        voxel_width[1] * (shape[1] // 2),
        voxel_width[2] * (shape[2] // 2),
    )
    x, y, z = np.meshgrid(
        *[voxel_width[i] * np.arange(0, shape[i]) for i in range(3)], indexing="ij"
    )
    mask = np.zeros(shape, dtype=bool)
    mask = (np.abs(x - center[0]) < radius / 2).astype(int)
    return mask


class TestJointSpaceWidthMorphometry(unittest.TestCase):
    def spacing_check(self, input_image, ref_image):
        input_spacing = input_image.GetSpacing()
        output_spacing = ref_image.GetSpacing()

        self.assertAlmostEqual(input_spacing[0], output_spacing[0], 4)
        self.assertAlmostEqual(input_spacing[1], output_spacing[1], 4)
        self.assertAlmostEqual(input_spacing[2], output_spacing[2], 4)

    def dimension_check(self, input_image, ref_image):
        input_size = input_image.GetSize()
        output_size = ref_image.GetSize()

        self.assertAlmostEqual(input_size[0], output_size[0], 4)
        self.assertAlmostEqual(input_size[1], output_size[1], 4)
        self.assertAlmostEqual(input_size[2], output_size[2], 4)

    def position_check(self, input_image, ref_image):
        input_origin = input_image.GetOrigin()
        output_origin = ref_image.GetOrigin()

        self.assertAlmostEqual(input_origin[0], output_origin[0], 4)
        self.assertAlmostEqual(input_origin[1], output_origin[1], 4)
        self.assertAlmostEqual(input_origin[2], output_origin[2], 4)

    def direction_check(self, input_image, ref_image):
        input_direction = input_image.GetDirection()
        output_direction = ref_image.GetDirection()

        self.assertAlmostEqual(input_direction[0], output_direction[0], 4)
        self.assertAlmostEqual(input_direction[1], output_direction[1], 4)
        self.assertAlmostEqual(input_direction[2], output_direction[2], 4)

    def test_jsw_pad(self):
        voxel_width = (1, 1, 1)
        shape = (30, 30, 30)
        radius = 4
        plate_array = create_plate_mask(shape, voxel_width, radius).astype(int)

        plate_image = sitk.GetImageFromArray(plate_array)

        pad_image = jsw_pad(plate_image)

        image_size = plate_image.GetSize()
        pad_image_size = pad_image.GetSize()

        # Image is padded by MISC2 (27) on each side in the X and Y direction.
        # I.e., 54 in X and 54 in Y
        plate_x = image_size[0]
        plate_y = image_size[1]
        plate_z = image_size[2]
        pad_x = pad_image_size[0]
        pad_y = pad_image_size[1]
        pad_z = pad_image_size[2]

        self.assertAlmostEqual(plate_x + MISC2 * 2, pad_x, 8)
        self.assertAlmostEqual(plate_y + MISC2 * 2, pad_y, 8)
        self.assertAlmostEqual(plate_z, pad_z, 8)

        self.spacing_check(pad_image, plate_image)
        self.position_check(pad_image, plate_image)
        self.direction_check(pad_image, plate_image)

    def test_jsw_dilate(self):
        voxel_width = (1, 1, 1)
        shape = (30, 30, 30)
        radius = 4

        # Image is dilated using a kernel of [MISC2, MISC2, MISC2], where MISC2 = 27
        plate_array_1 = create_plate_mask(shape, voxel_width, radius).astype(int)
        plate_array_2 = create_plate_mask(shape, voxel_width, radius + MISC2).astype(
            int
        )

        plate_1 = sitk.GetImageFromArray(plate_array_1)
        plate_2 = sitk.GetImageFromArray(plate_array_2)

        dilated = jsw_dilate(plate_1)
        dilated = sitk.BinaryThreshold(dilated, 127, 127, 1, 0)
        dilated_array = sitk.GetArrayFromImage(dilated)

        np.testing.assert_array_equal(plate_array_2, dilated_array)
        self.spacing_check(dilated, plate_2)
        self.position_check(dilated, plate_2)
        self.direction_check(dilated, plate_2)

    def test_jsw_erode(self):
        voxel_width = (1, 1, 1)
        shape = (200, 200, 200)
        radius = CALC

        # Image is eroded using a kernel of [CALC, CALC, CALC], where CALC = 35
        plate_array_1 = create_plate_mask(shape, voxel_width, 3 * radius).astype(int)
        plate_array_2 = create_plate_mask(shape, voxel_width, radius).astype(int)

        plate_1 = sitk.GetImageFromArray(plate_array_1)
        plate_2 = sitk.GetImageFromArray(plate_array_2)

        plate_1 = sitk.BinaryThreshold(plate_1, 1, 1, 127, 0)
        eroded_image, js_mask, dilated_js_mask = jsw_erode(plate_1, jsw_pad(plate_1))
        eroded_image = sitk.BinaryThreshold(eroded_image, 30, 30, 1, 0)
        eroded_array = sitk.GetArrayFromImage(eroded_image)

        np.testing.assert_array_equal(plate_array_2, eroded_array)
        self.spacing_check(eroded_image, plate_2)
        self.position_check(eroded_image, plate_2)
        self.direction_check(eroded_image, plate_2)

    def test_jsw_parameters(self):
        voxel_width = (1, 1, 1)
        shape = (100, 100, 100)
        radius = 10
        plate_array = create_plate_mask(shape, voxel_width, radius).astype(int)

        plate_array = 1 - plate_array
        plate_image = sitk.GetImageFromArray(plate_array)

        # Step 1: Image padding
        pad = jsw_pad(plate_image)

        # Step 2: Image dilation
        dilate = jsw_dilate(pad)

        # Step 3: Image erosion
        erode, js_mask, dilated_js_mask = jsw_erode(dilate, pad)

        # Step 4: Compute parameters
        test_dir = tempfile.mkdtemp()
        test_csv = os.path.join(test_dir, "jsw_params.csv")

        dt_img, jsw_params = jsw_parameters(
            pad,
            dilated_js_mask,
            test_csv,
            test_dir,
            js_mask=js_mask,
            voxel_size=1,
            oversamp=False,
            skel=False,
            minimum=0.0,
        )
        shutil.rmtree(test_dir)

        space = js_mask.GetSpacing()
        voxel = np.prod(space)
        img = sitk.GetArrayFromImage(js_mask)
        vol = voxel * np.sum(img)

        self.assertAlmostEqual(jsw_params[0][2], vol, 8)
        self.assertAlmostEqual(jsw_params[0][3], radius, 8)
        self.assertAlmostEqual(jsw_params[0][4], 0, 8)
        self.assertAlmostEqual(jsw_params[0][5], radius, 8)
        self.assertAlmostEqual(jsw_params[0][7], radius, 8)
        self.assertAlmostEqual(jsw_params[0][8], radius / radius, 8)
