"""
test_segmentation_evaluation.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test segmentation evaluation.
"""

import os
import unittest
import numpy as np
import SimpleITK as sitk

from ormir_xct.util.segmentation_evaluation import (
    binarize_numpy_array,
    get_distance_map_and_surface,
    get_surface_to_surface_distances_list,
    calculate_dice_and_jaccard,
    calculate_surface_distance_measures,
)


def create_test_image(dimensions, value):
    """
    Creates a numpy array containing a single value of given dimension.
    """
    array = np.full(dimensions, value)
    return array


class TestSegmentationEvaluation(unittest.TestCase):
    def test_binarize_numpy_array(self):
        test_image = np.array([[1, 2, 3], [0, 0, 100], [22, 0, 33]])
        expected_image = np.array([[1, 1, 1], [0, 0, 1], [1, 0, 1]])

        result_image = binarize_numpy_array(test_image)

        np.testing.assert_array_equal(expected_image, result_image)

    @unittest.skip("unimplemented")
    def test_get_distance_map_and_surface(self):
        pass

    @unittest.skip("unimplemented")
    def test_get_surface_to_surface_distances_list(self):
        pass

    @unittest.skip("unimplemented")
    def test_calculate_dice_and_jaccard(self):
        pass

    @unittest.skip("unimplemented")
    def test_calculate_surface_distance_measures(self):
        pass
