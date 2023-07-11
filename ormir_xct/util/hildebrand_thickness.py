"""
Created by: Nathan Neeteson
Created on: ??

Description: A set of utilities for morphometry on an
                image and/or binary mask.

"""

from __future__ import annotations

import numpy as np
from collections.abc import Iterable
from numba import jit
from SimpleITK import (
    GetImageFromArray,
    GetArrayFromImage,
    SignedMaurerDistanceMap,
)
from scipy.ndimage.morphology import binary_erosion, binary_dilation, distance_transform_edt
from skimage.morphology import skeletonize_3d
from typing import Optional, Union
import warnings

EPS = 1e-8


@jit(nopython=True, fastmath=True, error_model="numpy")
def compute_local_thickness_from_sorted_distances(
    local_thickness: np.ndarray,
    sorted_dists: np.ndarray,
    sorted_dists_indices: np.ndarray,
    voxel_width: np.ndarray,
    rd_extra: float
) -> np.ndarray:
    """
    Use Hildebrand's sphere-fitting method to compute the local thickness field for a
    binary image, given an array to fill in and the sorted distance map of the binary image.
    Since the distances are sorted by distance values in ascending order, we can iterate through and assign each voxel's
    distance value to all voxels within that distance. Voxels corresponding to larger spheres will be processed
    later and overwrite values assigned by smaller spheres, and so each voxel will eventually be assigned the
    diameter of the largest sphere that it lies within.
    Finally, we do not check every voxel in the image for whether it lies within a sphere. We only check voxels that
    lie within the cube with side length equal to the sphere diameter around the center voxel. This saves a lot of
    computational effort.
    Parameters
    ----------
    local_thickness : np.ndarray
        A numpy array that is initialized as zeros.
    sorted_dists : np.ndarray
        A numpy array that is the sorted distance ridge of a mask, but the distances only. Each element is a float
        that corresponds to a distance value on the distance ridge, in ascending order.
    sorted_dists_indices : np.ndarray
        A numpy array that is the integer indices of the location of the distance. Each row in this array corresponds to
        the distance at the same position in the `dist_ridge` parameter, and then the three elements in each row are
        the i, j, k indices of the location of that voxel of the distance ridge in the binary image.
    voxel_width : np.ndarray
        A numpy array with shape (3,) that gives the width of voxels in each dimension.
    rd_extra : float
        An extra bit of distance added to `rd` for the purposes of determining whether a voxel falls within the sphere
        centered at another voxel. This is needed because if you use the oversampling distance transform, your sphere
        diameters will be smaller (since they are measuring the distance from that voxel centroid to the boundary of
        the shape rather than to the nearest centroid outside the shape). This causes voxels along the boundary of a
        shape to not be included in the spheres centered on voxels further in. Set this to `0.5` if you are using
        oversampling and `0` if you are not.
    Returns
    -------
    np.ndarray
        The local thickness field.
    """

    for (rd, (ri, rj, rk)) in zip(sorted_dists, sorted_dists_indices):
        rd_vox = rd / voxel_width
        di_min = np.maximum(np.floor(ri - rd_vox[0]) - 1, 0)
        di_max = np.minimum(np.ceil(ri + rd_vox[0]) + 2, local_thickness.shape[0])
        dj_min = np.maximum(np.floor(rj - rd_vox[1]) - 1, 0)
        dj_max = np.minimum(np.ceil(rj + rd_vox[1]) + 2, local_thickness.shape[1])
        dk_min = np.maximum(np.floor(rk - rd_vox[2]) - 1, 0)
        dk_max = np.minimum(np.ceil(rk + rd_vox[2]) + 2, local_thickness.shape[2])
        for di in range(di_min, di_max):
            for dj in range(dj_min, dj_max):
                for dk in range(dk_min, dk_max):
                    if (
                        (voxel_width[0] * (di - ri)) ** 2
                        + (voxel_width[1] * (dj - rj)) ** 2
                        + (voxel_width[2] * (dk - rk)) ** 2
                    ) < (rd + rd_extra) ** 2:
                        local_thickness[di, dj, dk] = 2 * rd
    return local_thickness


def oversampling_distance_transform(mask: np.ndarray, voxel_width: np.ndarray) -> np.ndarray:
    # oversample the image
    shape = [2 * s - 1 for s in mask.shape]
    upsampled_mask = np.zeros(shape, dtype=mask.dtype)
    upsampled_mask[tuple([slice(None, None, 2)]*len(mask.shape))] = mask
    upsampled_mask = binary_dilation(
        upsampled_mask,
        structure=np.ones(tuple([3]*len(mask.shape)))
    ).astype(int)
    upsampled_mask = binary_erosion(
        np.pad(upsampled_mask, 1, mode="edge"),
        structure=np.ones(tuple([3]*len(mask.shape)))
    ).astype(int)[tuple([slice(1, -1)]*len(mask.shape))]

    # do distance transform on oversampled mask
    dt = upsampled_mask*distance_transform_edt(
        upsampled_mask,
        voxel_width/2
    )

    return dt[tuple([slice(None, None, 2)]*len(mask.shape))]


def compute_local_thickness_from_mask(
    mask: np.ndarray, voxel_width: Union[Iterable[float], float], oversample: bool = True, skeletonize: bool = True
) -> np.ndarray:
    """
    Compute the local thickness field for a binary mask.

    This is done by calculating the distance transform and skeletonization, then combining these to create a sorted
    "distance ridge," which is an array of the distance transform values and indices of the skeletonization.
    Finally, a `numba`-jit-decorated function is called to efficiently use Hildebrand's sphere-fitting method for
    local thickness calculation. The local thickness field is scaled by the voxel width and multiplied by the
    binary mask to ensure local thickness values are not assigned to the background inadvertently. Optionally,
    skeletonization can be used to speed up the calculation, and oversampling can be used to improve accuracy.

    Parameters
    ----------
    mask : np.ndarray
        The mask for which to calculate the local thickness field.

    voxel_width : Union[Iterable[float], float]
        If an iterable of length 3, the voxel widths in each dimension. If a float, the isotropic voxel width.

    oversample : bool
        Set this to `True` to use the (more accurate but slower) oversampling distance transform method. For
        consistency with IPL, set this to `False`

    skeletonize : bool
        Set this to `True` to skeletonize and use only voxels on the skeleton for thickness calculation. For
        better consistency with IPL, set this to `True`

    Returns
    -------
    np.ndarray
        The local thickness field.
    """
    if isinstance(voxel_width, float) or isinstance(voxel_width, int):
        voxel_width = np.array([float(voxel_width)] * 3)
    elif isinstance(voxel_width, Iterable):
        if len(voxel_width) != 3:
            raise ValueError(
                "`voxel_width must be a float, int, or iterable of length 3`"
            )
        else:
            voxel_width = np.array(voxel_width).astype(float)
    else:
        raise ValueError("`voxel_width must be a float, int, or iterable of length 3`")

    # binarize the mask if it wasn't already done
    mask = mask > 0
    if mask.sum() == 0:
        warnings.warn("given an empty mask, cannot proceed, returning zeros array")
        return np.zeros(mask.shape, dtype=float)

    if oversample:
        mask_dist = oversampling_distance_transform(mask, voxel_width)
    else:
        mask_dist = mask*distance_transform_edt(
            mask,
            voxel_width
        )

    if skeletonize:
        skeleton = skeletonize_3d(mask)
        skeleton_dist = (skeleton > 0)*mask_dist
        sorted_dists = [(skeleton_dist[i, j, k], i, j, k) for (i, j, k) in zip(*skeleton_dist.nonzero())]
    else:
        sorted_dists = [(mask_dist[i, j, k], i, j, k) for (i, j, k) in zip(*mask_dist.nonzero())]

    sorted_dists.sort()
    sorted_dists = np.asarray(sorted_dists, dtype=float)

    return mask * compute_local_thickness_from_sorted_distances(
        np.zeros(mask_dist.shape, dtype=float),
        sorted_dists[:, 0].astype(float),
        sorted_dists[:, 1:].astype(int),
        voxel_width,
        0.5 if oversample else 0
    )


def calc_structure_thickness_statistics(
    mask: np.ndarray,
    voxel_width: Union[float, Iterable],
    min_thickness: float,
    sub_mask: Optional[np.ndarray] = None,
    pad_amount: Optional[Union[int, Tuplep[int, int, int]]] = None,
    oversample: bool = False,
    skeletonize: bool = False,
) -> Tuple[float, float, float, float, np.ndarray]:
    """
    Parameters
    ----------
    mask : numpy.ndarray
        3-dimensional numpy array containing a binary mask that is the segmentation of the structure you want
        to calculate the mean thickness of

    voxel_width : Union[float, Iterable]
        physical width of a voxel, for scaling distance. Either a single float value or length-3 iterable

    min_thickness : float
        the minimum thickness of the structure you want to calculate the mean thickness of

    sub_mask : Optional[np.ndarray]
        an optional sub mask. if given, we will calculate the local thickness field on `mask` but then sample
        local thickness values only from within `sub_mask` and calculate stats on these values only.

    pad_amount: Optional[int]
        specify this to pad your mask using edge padding but then only use the local distances provided on the
        original image. can be useful if you have a structure that intersects the edge of the image but you don't want
        local thicknesses to be artificially decreased

    oversample : bool
        Set this to `True` to use the (more accurate but slower) oversampling distance transform method. For
        consistency with IPL, set this to `False`

    skeletonize : bool
        Set this to `True` to skeletonize and use only voxels on the skeleton for thickness calculation. For
        better consistency with IPL, set this to `True`

    Returns
    -------
    Tuple[float, float, float, float, np.ndarray]
        the mean, standard deviation, minimum, and maximum of the local thickness of the structure defined by the mask,
        and the whole local thickness field of the entire image (0 outside the mask)
    """
    if sub_mask is not None:
        sub_mask = sub_mask > 0  # binarize
        if sub_mask.sum() == 0:
            warnings.warn(
                "cannot find structure thickness statistics for binary sub_mask with no positive voxels"
            )
            return None, None, None, None, np.zeros(mask.shape, dtype=float)
        if mask.shape != sub_mask.shape:
            raise ValueError(
                "`mask` and `sub_mask` must have same shape if `sub_mask` is given"
            )
    else:
        sub_mask = np.ones_like(mask, dtype=bool)

    if pad_amount is not None:
        if not isinstance(pad_amount, int) or (pad_amount <= 0):
            raise ValueError("if given, `pad_amount` must be a positive integer")
        mask = np.pad(mask, pad_amount, mode="edge")

    if (mask > 0).sum() > 0:
        mask = mask > 0  # binarize
        local_thickness = compute_local_thickness_from_mask(mask, voxel_width, oversample, skeletonize)
    else:
        warnings.warn(
            "cannot find structure thickness statistics for binary mask with no positive voxels"
        )
        return None, None, None, None, np.zeros(mask.shape, dtype=float)

    if pad_amount is not None:
        # trim down the output
        mask = mask[pad_amount:-pad_amount, pad_amount:-pad_amount, pad_amount:-pad_amount]
        local_thickness = local_thickness[pad_amount:-pad_amount, pad_amount:-pad_amount, pad_amount:-pad_amount]

    local_thickness_structure = np.maximum(local_thickness[local_thickness > 0], min_thickness)

    return (
        local_thickness_structure.mean(),
        local_thickness_structure.std(),
        local_thickness_structure.min(),
        local_thickness_structure.max(),
        local_thickness,
    )
