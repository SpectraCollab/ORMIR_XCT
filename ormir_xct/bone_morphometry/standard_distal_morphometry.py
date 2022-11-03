"""
Written by Nathan Neeteson on 2022/11/2.
Last modified: 2022/11/2.
Module containing high-level logic for standard distal morphometric analysis.
Structure thickness logic imported from `ormir_xct.util.hildebrand_thickness`
Bone thresholding logic imported from `ormir_xct.segmentation.ipl_seg`
"""

from __future__ import annotations

import numpy as np
from warnings import warn

from ormir_xct.util.hildebrand_thickness import calc_structure_thickness_statistics
from ormir_xct.segmentation.ipl_seg import ipl_seg
from SimpleITK import GetImageFromArray, GetArrayFromImage


def standard_distal_morphometry(
    image: np.ndarray,
    cort_mask: np.ndarray,
    trab_mask: np.ndarray,
    voxel_width: float = 0.0606964,
    cort_thresh: float = 450.0,
    trab_thresh: float = 320.0,
    ctth_min_th: float = 0.0,
    tbth_min_th: float = 0.0,
    tbsp_min_th: float = 0.0,
    axial_dim: int = 2,
) -> dict:
    """

    Parameters
    ----------
    image : np.ndarray
        The input CT image, with intensities in some kind of density units.

    cort_mask : np.ndarray
        A binary mask of the cortical compartment. Should be either boolean or have positive values for cortex and
        zero values for not-cortex. Should not overlap with trabecular mask.

    trab_mask : np.ndarray
        A binary mask of the trabecular compartment. Should be either boolean or have positive values for trabecular
        and zero values for not-trabecular. Should not overlap with cortical mask.

    voxel_width : float
        The physical width of voxels in the image. For now, only isotropic is supported for consistency with the
        standard HR-pQCT workflow. Default value is 0.0606964 (in um, corresponds to standard HR-pQCT protocol)

    cort_thresh : float
        The lower threshold to use to segment cortical bone. Should be in the same units as the intensity image.
        Default value is 450.0 (in mg HA/ccm, corresponds to standard HR-pQCT protocol)

    trab_thresh : float
        The lower threshold to use to segment trabecular bone. Should be in the same units as the intensity image.
        Default value is 320.0 (in mg HA/ccm, corresponds to standard HR-pQCT protocol)

    ctth_min_th : float

    tbth_min_th : float

    tbsp_min_th : float

    axial_dim : int
        The axial dimension in the image, this is the dimension to iterate across slice-by-slice to find Tt.Ar, Ct.Ar,
        and Tb.Ar. Must be 0, 1, or 2. Default is 2.

    Returns
    -------
    dict
        Dictionary with string keys and float values with the estimated morphometric parameters for the given image and
        masks. Contains the following keys: `Tt.BMD`, `Ct.BMD`, `Tb.BMD`, `Ct.Th`, `Ct.Po`, `Tb.BV/TV`, `Tb.N`, `Tb.Th`,
        `Tb.Sp`, `Tt.Ar`, `Ct.Ar`, `Tb.Ar`. Refer to `DOI: 10.1007/s00198-020-05438-5` Tables 2 and 3 for descriptions
        of all parameters.
    """

    # input error checking

    if not isinstance(axial_dim, int) or axial_dim not in [0, 1, 2]:
        raise ValueError(
            "`axial_dim` must be an integer and must be either 0, 1, or 2."
        )

    if (cort_mask & trab_mask).sum() > 0:
        warn(
            "`cort_mask` and `trab_mask` should not overlap or the analysis may be invalid"
        )

    # first calculate bone and void masks for the cortical and trabecular compartments. these will be useful for
    # many of the morphometric parameters

    cort_mask = cort_mask > 0
    trab_mask = trab_mask > 0

    cort_bone_mask = cort_mask & (
        GetArrayFromImage(
            ipl_seg(
                GetImageFromArray(image),
                cort_thresh,
                1e10,  # crazy high number because there's no upper thresh
                voxel_width,
            )
        )
        == 127
    )

    cort_void_mask = cort_mask & (~cort_bone_mask)

    trab_bone_mask = trab_mask & (
        GetArrayFromImage(
            ipl_seg(
                GetImageFromArray(image),
                trab_thresh,
                1e10,  # crazy high number because there's no upper thresh
                voxel_width,
            )
        )
        == 127
    )

    trab_void_mask = trab_mask & (~trab_bone_mask)

    # set up the parameters dictionary
    parameters = {}

    # calculate density measures
    parameters["Tt.BMD"] = float(image[cort_mask | trab_mask].mean())
    parameters["Ct.BMD"] = float(image[cort_mask].mean())
    parameters["Tb.BMD"] = float(image[trab_mask].mean())

    # calculate cortical morphometry
    parameters["Ct.Th"] = calc_structure_thickness_statistics(
        cort_mask, voxel_width, ctth_min_th
    )[0]
    parameters["Ct.Po"] = float(cort_void_mask.sum() / cort_mask.sum())

    # calculate trabecular morphometry
    parameters["Tb.BV/TV"] = float(trab_bone_mask.sum() / trab_mask.sum())
    parameters["Tb.N"] = None  # TODO not yet implemented
    parameters["Tb.Th"] = calc_structure_thickness_statistics(
        trab_bone_mask, voxel_width, tbth_min_th
    )[0]
    parameters["Tb.Sp"] = calc_structure_thickness_statistics(
        trab_void_mask, voxel_width, tbsp_min_th
    )[0]

    # calculate area measures
    parameters["Tt.Ar"] = np.asarray(
        [
            (voxel_width**2) * s.sum()
            for s in np.moveaxis((cort_mask | trab_mask), axial_dim, 0)
        ]
    ).mean()
    parameters["Ct.Ar"] = np.asarray(
        [(voxel_width**2) * s.sum() for s in np.moveaxis(cort_mask, axial_dim, 0)]
    ).mean()
    parameters["Tb.Ar"] = np.asarray(
        [(voxel_width**2) * s.sum() for s in np.moveaxis(trab_mask, axial_dim, 0)]
    ).mean()

    return parameters
