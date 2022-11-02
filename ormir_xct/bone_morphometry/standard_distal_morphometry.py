"""
Written by Nathan Neeteson on 2022/11/2.
Last modified: 2022/11/2.
Module containing high-level logic for standard distal morphometric analysis.
Structure thickness logic imported from `ormir_xct.util.hildebrand_thickness`
Bone thresholding logic imported from `ormir_xct.segmentation.ipl_seg`
"""

from __future__ import annotations

from collections.abc import Iterable
from ormir_xct.util.hildebrand_thickness import calc_structure_thickness_statistics
from ormir_xct.segmentation.ipl_seg import ipl_seg
from typing import Union


def standard_distal_morphometry(
        img: np.ndarray,
        cort_mask: np.ndarray,
        trab_mask: np.ndarray,
        voxel_width: Union[float, Iterable] = 0.0606964,
        cort_thresh: float = 450.0,
        trab_thresh: float = 320.0
) -> dict:
    """

    Parameters
    ----------
    img : np.ndarray
        The input CT image, with intensities in some kind of density units.

    cort_mask : np.ndarray
        A binary mask of the cortical compartment. Should be either boolean or have positive values for cortex and
        zero values for not-cortex. Must not overlap with trabecular mask.

    trab_mask : np.ndarray
        A binary mask of the trabecular compartment. Should be either boolean or have positive values for trabecular
        and zero values for not-trabecular. Must not overlap with cortical mask.

    voxel_width : Union[float, Iterable]
        The physical width of voxels in the image. A single float can be given if the image resolution is isotropic,
        or else a length-3 iterable can be given for non-isotropic resolution. The units of most morphometric
        parameters will depend on the units of this parameter.

    cort_thresh : float
        The lower threshold to use to segment cortical bone. Should be in the same units as the intensity image.

    trab_thresh : float
        The lower threshold to use to segment trabecular bone. Should be in the same units as the intensity image.

    Returns
    -------
    dict
        Dictionary with string keys and float values with the estimated morphometric parameters for the given image and
        masks. Contains the following keys:
    """
    pass
