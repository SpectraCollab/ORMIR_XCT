"""
Created by: Nathan Neeteson
Created on: ??

Description: A set of utilities for morphometry on an 
            image and/or binary mask.
"""

import numpy as np
from scipy import ndimage as ndi
from skimage.morphology import skeletonize_3d

def crop_image_to_values(image):
    """
    This function uses the nonzeros ndarray method to identify the indices
    of the image with data, then slices the image based on the min and max
    index in each dimension to crop the image to the region with data
    i_nz, j_nz, k_nz = image.nonzero()

    Parameters
    ----------
    image : numpy.array

    Returns
    -------
    numpy.array
    """
    i_nz, j_nz, k_nz = image.nonzero()
    return image[min(i_nz):max(i_nz),min(j_nz):max(j_nz),min(k_nz):max(k_nz)]


def calc_local_thickness(dist, skel):
    """
    This function calculates the local thickness field given a distance
    transformation and skeletonization of a binary image.

    Parameters
    ----------
    dist : numpy.array
        Distance transformation array

    skel : numpy.array
        Skeletonization of a binary image

    Returns
    -------
    local_thickness : numpy.array
    """
    # the distance ridge is wherever the skeletonization is not zero
    i_ridge, j_ridge, k_ridge = skel.nonzero()

    # the local thickness field is initialized as all zero
    local_thickness = np.zeros(dist.shape)

    # xx,yy,zz are constructed so that euclidian distances between points in
    # the mesh can be calculated vectorially
    xx,yy,zz = np.meshgrid(
        np.linspace(0,dist.shape[0]-1,dist.shape[0]),
        np.linspace(0,dist.shape[1]-1,dist.shape[1]),
        np.linspace(0,dist.shape[2]-1,dist.shape[2]),
        indexing = 'ij'
    )

    # then we iterate through all of the distance ridge points
    for i,j,k in zip(i_ridge,j_ridge,k_ridge):
        # grab the local distance at the current ridge
        ridge_dist = dist[i,j,k]

        # identify the scope within which this distance should be applied
        scope = ((xx-i)**2+(yy-j)**2+(zz-k)**2)<(ridge_dist**2)

        # and apply that distance on the scope
        local_thickness[scope] = np.maximum(local_thickness[scope],2*ridge_dist)

    return local_thickness


def calc_mean_thickness(mask, voxel_width, Tmin, segments=None, overlap=None):
    """
    Parameters
    ----------
    mask : numpy.array
        numpy array of shape (Nx,Ny,Nz) containing a binary mask for the 
        cortical shell of a bone
    
    voxel_width : float
        physical width of a voxel, for scaling distance
    
    Tmin : float
        the minimum thickness of the structure
    
    Returns
    -------
    list
        the mean, minimum, maximum, and local thickness of the structure 
        defined by the mask, and the standard deviation
    """
    EPS = 1e-8

    # crop the mask to the region, to save processing time
    mask = crop_image_to_values(mask)

    # compute the distance map on the input mask
    mask_dist = ndi.distance_transform_edt(mask)

    # then get the skeleton of the input mask
    mask_skele = skeletonize_3d(mask)

    # now we need to compute the local thickness field
    if segments == None:
        # if no segment number was given, do the whole domain at once
        local_thickness = calc_local_thickness(mask_dist,mask_skele)

    else:
        # if we are going to do it in segments, init the local thickness field
        local_thickness = np.zeros(mask.shape)

        # the overlap between segments should actually just be twice the maximum
        # of the distance transform, use this as default if not specified
        if overlap == None:
            overlap = int(np.floor(np.max(mask_dist.flatten())))

        # then we will iterate over each dimension 'segments' times, constructing
        # the bounds in each dimension of that given segment as we go deeper
        # into the for loops.

        # this all looks kind of insane but it is orders of magnitudes faster
        # to run than just computing the local thickness field on the whole
        # domain at once
        for i in range(segments):
            # calculate min and max i
            i_min = int(i * mask.shape[0] // segments)
            i_max = int((i+1) * mask.shape[0] // segments)

            # then add overlap to the bounds, but stay within the bounds
            # of the original image
            i_min = max(0,              i_min-overlap)
            i_max = min(mask.shape[0],  i_max+overlap)

            for j in range(segments):
                j_min = int(j * mask.shape[1] // segments)
                j_max = int((j+1) * mask.shape[1] // segments)

                j_min = max(0,              j_min-overlap)
                j_max = min(mask.shape[1],  j_max+overlap)

                for k in range(segments):
                    k_min = int(k * mask.shape[2] // segments)
                    k_max = int((k+1) * mask.shape[2] // segments)

                    k_min = max(0,              k_min-overlap)
                    k_max = min(mask.shape[2],  k_max+overlap)

                    local_thickness[i_min:i_max,j_min:j_max,k_min:k_max] = \
                        np.maximum(
                            calc_local_thickness(
                                mask_dist[i_min:i_max,j_min:j_max,k_min:k_max],
                                mask_skele[i_min:i_max,j_min:j_max,k_min:k_max]
                            ),
                            local_thickness[i_min:i_max,j_min:j_max,k_min:k_max]
                        )

    local_thickness = local_thickness*mask

    # then we scale the local thickness field by the voxel width
    local_thickness = voxel_width * local_thickness

    # finally we want to calculate the adjusted mean thickness as:
    # tau_bar = (1/(1-F(Tmin))) * [int(tau dF(tau)) from Tmin to tau_max]

    # I devised a convenient way to do this discretely, since I don't really
    # see a way to calculate a continuous cumulative PDF, or integrate it

    # first, find the proportion of cells with local thickness < Tmin,
    # this is F(Tmin)
    F_Tmin = np.sum( ((local_thickness>0) & (local_thickness<Tmin)).flatten() ) \
        / (np.sum( (local_thickness>0).flatten() ) + EPS )

    # next, set the local thickness to a minimum of Tmin
    local_thickness[local_thickness>0] = \
        np.maximum(local_thickness[local_thickness>0],Tmin)

    # finally, we can now take the average of all of the local thicknesses
    # and multiply by the adjustment factor
    mean_thickness = (1/(1-F_Tmin))*( np.mean(local_thickness[local_thickness>0].flatten()) )

    # to get the standard deviation of thickness, we calculate the second
    # moment of the distribution and take the square root:
    mean_thickness_std = \
        np.sqrt(
            np.sum((local_thickness[local_thickness>0] - mean_thickness )**2) \
            /(np.sum( (local_thickness>0).flatten() ) + 1e-8 )
        )

    min_thickness = min(local_thickness[local_thickness>0])
    max_thickness = max(local_thickness[local_thickness>0])

    return mean_thickness, mean_thickness_std, min_thickness, max_thickness, local_thickness


def calc_compartment_bone_volume_fraction(image, mask, thresh=450):
    """
    Parameters
    -----------
    image : numpy.array
        the CT image of the bone
    
    mask : numpy.array
        the binary mask for the compartment
    
    thresh : int
        the threshold for which voxels contain bone, in the same units as the
        image intensities
        
    Returns
    -------
    BVTV
        the bone volume fraction of the compartment defined by the mask
    """
    bone = image > thresh

    BVTV = np.sum( bone[mask].flatten() ) / np.sum(mask.flatten())

    return BVTV


def calc_average_diameter(mask, voxel_width):
    """
    This function calculates the centroid of a binary mask, then calculates
    the average distance of the mask from the centroid. Not particularly 
    morphometrically meaningful, but useful for assessing if a segmented mask
    has been significantly shrunk by postprocessing.

    Parameters
    ----------
    mask : numpy.array

    voxel_width : float

    Returns
    -------
    average_diameter
    """
    i_nz, j_nz, k_nz = mask.nonzero()

    i_dist = i_nz - np.mean(i_nz)
    j_dist = j_nz - np.mean(j_nz)
    k_dist = k_nz - np.mean(k_nz)

    average_diameter = voxel_width*np.mean(2*np.sqrt( i_dist**2 + j_dist**2 + k_dist**2 ))

    return average_diameter