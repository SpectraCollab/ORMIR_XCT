---
title: 'ORMIR_XCT: A Python package for high resolution peripheral quantitative computed tomography image processing'
tags:
  - Python
  - XtremeCT
  - HR-pQCT
  - bone analysis
authors:
  - name: Michael T. Kuczynski
    orcid: 0000-0001-5671-1205
    equal-contrib: true
    affiliation: "1, 2"
  - name: Nathan J. Neeteson
    equal-contrib: true
    affiliation: "1, 2"
  - name: Kathryn S. Stok
    orcid: 0000-0002-0522-4180
    affiliation: 3
  - name: Andrew J. Burghardt
    orcid: 0000-0002-6343-4944
    affiliation: 4
  - name: Michelle A.E. Espinosa
    orcid: 0000-0002-8279-9842
    affiliation: "3, 5, 6"
  - name: Jared Vicory
    orcid: 0000-0001-6041-5580
    affiliation: 7
  - name: Justin J. Tse
    orcid: 0000-0002-5107-5884
    affiliation: "1, 8"
  - name: Pholpat Durongbhan
    orcid: 0000-0002-5164-3482
    affiliation: 3
  - name: Serena Bonaretti
    orcid: 0000-0003-4264-1773
    affiliation: 9
  - name: Andy Kin On Wong
    orcid: 0000-0001-8540-8854
    affiliation: "6, 10"
  - name: Steven K. Boyd
    orcid: 0000-0002-2930-5997
    affiliation: "1, 8"
  - name: Sarah L. Manske
    orcid: 0000-0003-0888-9556
    corresponding: true
    affiliation: "1, 8"
affiliations:
 - name: McCaig Institute for Bone and Joint Health, Cumming School of Medicine, University of Calgary, Calgary, Canada 
   index: 1
 - name: Department of Biomedical Engineering, Schulich School of Engineering, University of Calgary, Calgary, Canada 
   index: 2
 - name: Department of Biomedical Engineering, The University of Melbourne, Parkville, Australia
   index: 3
 - name: Department of Radiology and Biomedical Imaging, University of California, San Francisco, USA
   index: 4
 - name: Rehabilitation Sciences Institute, The University of Toronto, Toronto, Canada
   index: 5
 - name: Joint Department of Medical Imaging, University Health Network, Toronto, Canada
   index: 6
 - name: Kitware, Inc., Carrboro, North Carolina, USA
   index: 7
 - name: Department of Radiology, Cumming School of Medicine, University of Calgary, Calgary, Canada
   index: 8
 - name: Swiss Center for Musculoskeletal Imaging, Balgrist Campus, Zurich, Switzerland
   index: 9
 - name: Department of Epidemiology, Dalla Lana School of Public Health, University of Toronto, Toronto, Canada
   index: 10
date: 30 August 2023
bibliography: paper.bib
---

# 1 – Statement of Need:
High resolution peripheral quantitative computed tomography (HR-pQCT) is an imaging technique with a nominal isotropic voxel size of 61µm capable of imaging trabecular bone *in-vivo*. HR-pQCT has a wide range of applications, primarily focused on bone to improve our understanding of musculoskeletal diseases [@Brunet:2020], assess epidemiological associations  [@Burt:2016], and evaluate the effects of pharmaceutical interventions [@Brunet:2021]. Processing HR-pQCT images has largely been supported using the scanner manufacturer’s scripting language (Image Processing Language, IPL, Scanco Medical). However, by expanding image processing workflows outside of the scanner manufacturer’s software environment, users have the flexibility to apply more advanced mathematical techniques and leverage modern software packages to improve image processing. The `ORMIR_XCT` Python package was developed to reimplement some existing IPL workflows and provide an open and reproducible package allowing for the development of advanced HR-pQCT data processing workflows.


# 2 – Package Summary:
The development of this package began during the Jupyter Community Workshop in Maastricht, Netherlands in June 2022, hosted by the Open and Reproducible Musculoskeletal Imaging Research (ORMIR) group. During this workshop, the conceptualization and initial development of the `ORMIR_XCT` package began with support from Kitware. The `ORMIR_XCT` package is currently being used by members of the ORMIR community to assess bone mineral density (BMD) and joint space width (JSW) changes in HR-pQCT scans of patients with osteoarthritis or rheumatoid arthritis.

The `ORMIR_XCT` package contains four modules for processing HR-pQCT data of bones and joints: 1) automatic contouring of the periosteal surface, 2) JSW analysis, 3) BMD calculation, and 4) segmentation of trabecular bone. Analyses have been performed to compare outputs from the `ORMIR_XCT` package to results generated using IPL. Jupyter Notebook examples are provided to describe the workflows implemented in the `ORMIR_XCT` package.

# 3 – Comparison to IPL: 
## 3.1 - Autocontour:
Automatic periosteal contouring (autocontour) was performed on a sample dataset of HR-pQCT images of the 2nd and 3rd distal interphalangeal (DIP) and trapeziometacarpal (TMC) joints (n = 59). The images came from 10 participants in an osteoarthritic group and 10 participants in a control group. This dataset is representative of typical data that is collected using HR-pQCT. Binarized images were obtained using both the IPL standard method for automatic periosteal contouring [@Burghardt:2010] and the `ORMIR_XCT` package. Segmentation were compared by computing DICE coefficients, Jaccard indices, and Hausdorff distances between images. The IPL method for automatic periosteal contouring was taken as the ground truth. Results of the segmentation comparison are shown in \autoref{fig:Table1}.

![Table 1: DICE coefficients, Jaccard indices, and Hausdorff distances (voxels) between IPL and `ORMIR_XCT` automatic contouring implementations. All scans were obtained from a second-generation HR-pQCT scanner (XtremeCT2, Scanco Medical) with an isotropic voxel size of 61µm. DIP2: 2nd distal interphalangeal joint, DIP3: 3rd distal interphalangeal joint, TMC: trapeziometacarpal joint.\label{fig:Table1}](figures/Table1.png)

## 3.2 - Thickness:
The `ORMIR_XCT` package contains an open-source implementation of the algorithm for model-independent thickness estimation by Hildebrand *et al* [@Hildebrand:1996]. This thickness estimation is used to compute several morphological measurements from HR-pQCT images, including trabecular thickness, trabecular separation, and cortical thickness. Given a binary mask describing a three-dimensional object as input, the algorithm first computes the distance map (via a distance transform), describing at each voxel the radius of the largest sphere centered at that voxel that is entirely within the object. Next, the local thickness map is computed by iterating through all voxels in the mask and assigning them a local thickness value that is the diameter of the largest sphere in the distance map that contains that voxel. The thickness of a structure can then be computed as the volume-weighted mean of the local thickness map, with optional adjustments for a minimum thickness value if desired to reduce the effect of surface noise.

@Hildebrand:1996 note an optimization for the algorithm where first, the distance ridge (also known as skeletonization or medial axis) is computed and only the distance map values on the distance ridge are used for local thickness map computation. We implemented this optimized version of the algorithm with NumPy (v1.23.3) [@Harris:2020] and Numba (v0.56.3) [@Lam:2015]. Finally, we have noted and compensated for a discrepancy between the definition of the distance map by @Hildebrand:1996 and the outputs of many common open-source distance map algorithms (including those available in SimpleITK (v2.0.2) [@Lowekamp:2013] and scikit-image (v0.19.2) [@Van der Walt:2014]). @Hildebrand:1996 define their distance map as "the radius of the largest sphere centered at the point and still completely inside the structure". In contrast, most other distance transforms compute the distance from the center of a voxel inside the mask to the nearest voxel center outside the mask. 

To compensate for this, we developed an oversampling distance transform function (\autoref{fig:DT_Figure}). In this function, an input mask is up-sampled to double the voxel size, and a sequence of morphological filters are applied to ensure that the newly introduced voxels on the boundary between the structure and the background are assigned as background voxels. A distance transform is applied to this mask, resulting in a distance map where the spheres fit entirely within the structure defined by the mask, and the resulting distance map is down-sampled to the original voxel size.

![Figure 1: Examples of the thickness estimation algorithm implemented in the `ORMIR_XCT` package. Top row: thickness calculation on a 1 voxel thick plate demonstrating how thickness estimation is improved using the oversampling distance transform function (thickness = 1 voxel using oversampling, thickness = 2 voxels without oversampling). Bottom row: thickness calculation applied to a sample finger joint.\label{fig:DT_Figure}](figures/DT_Figure.png)

The user is given a choice, via a Boolean flag parameter in the compute_local_thickness_from_mask and calc_structure_thickness_statistics functions, to use the oversampling distance transform for thickness estimation. The choice is given because different users may have variable preferences in applying alternate definitions regarding the bounds of their structures (whether they be contained within the mask voxels or extend to the center of the neighbouring background voxels) and because using the normal (*i.e.*, not oversampled) distance transform will provide better congruence with thickness calculations produced using IPL.

To evaluate the thickness computation implemented in the `ORMIR_XCT` package, a set of synthetic shapes were generated to simulate bones of varying sizes. These shapes include solid and hollow spheres, solid and hollow cylinders, and plates of varying thicknesses [@ORMIR_XCT_Shapes:2023]. The standard IPL joint space width (JSW) analysis workflow [@Stok:2020] was performed on the synthetic shape dataset using the following parameters: `ridge_epsilon = 0.9`, `assign_epsilon = 1.8`, `suppress_boundary = 0`, and `version = 3`. This set of parameters is currently used for JSW analysis of *in vivo* finger joints. ORMIR_XCT thickness was calculated using the oversampling distance transform function described above. Bland-Altman plots were generated to compare thickness results between algorithms (\autoref{fig:IPL_vs_ORMIR_XCT-DT}).

![Figure 2: Bland-Altman and regression plots of mean joint space thickness computed using IPL and the `ORMIR_XCT` package  . Top row: black lines indicate mean difference and red dotted line shows the limits of agreement. Bottom row: solid black line indicates the linear regression between IPL and ORMIR_XCT computed thickness and red dotted lines indicate a line of unity.\label{fig:IPL_vs_ORMIR_XCT-DT}](figures/IPL_vs_ORMIR_XCT-DT.png)

## 3.3 - Bone Mineral Density:
Images obtained from HR-pQCT scanners are saved using the manufacturer’s proprietary file format (AIM). To process HR-pQCT images using Python, these files need to be converted to a file format that can be interpreted by common image processing Python libraries. The `ITKIOScanco` module is used in the `ORMIR_XCT` package to convert HR-pQCT images to other common medical image file types. However, the `ITKIOScanco` module converts HR-pQCT images to Hounsfield Units (HU) by default. Measures of BMD require the image to be calibrated in density units (mg of hydroxyapatite per cm3). Several image unit conversions have been included in the `ORMIR_XCT` package to allow for conversion between HR-pQCT native units (termed Scanco units) and each of HU, density, and linear attenuation units. A sample dataset of HR-pQCT images of second and third metacarpal phalangeal (MCP) joints (n = 292) was used to compare BMD results between IPL and the `ORMIR_XCT` package. BMD was reported separately for the distal (DST) and proximal (PRX) segments of each joint (\autoref{fig:IPL_vs_ORMIR_XCT-BMD}).

![Figure 3: Bone mineral density (mg HA/cm3) linear regression and Bland-Altman plots comparing IPL and the ORMIR_XCT computed bone mineral density (BMD ). All scans were obtained from a second-generation HR-pQCT scanner (XtremeCT2, Scanco Medical) with an isotropic voxel size of 61µm. MCP2: 2nd metacarpal phalangeal joint, MCP3: 3rd metacarpal phalangeal joint,  DST: distal, PRX: proximal.\label{fig:IPL_vs_ORMIR_XCT-BMD}](figures/IPL_vs_ORMIR_XCT-BMD.png)
	
## 3.4 - Trabecular Segmentation:
A common operation performed in IPL is the application of a Gaussian smoothing filter followed by a global threshold-based image segmentation. The `gauss_seg` function in IPL has been reimplemented in the `ORMIR_XCT` package and the similarity of IPL and `ORMIR_XCT` trabecular segmentations were computed using DICE coefficients, Jaccard indices, and Hausdorff distances (\autoref{fig:Table2}). The same dataset used to test the automatic contouring module was used to compare IPL and `ORMIR_XCT` trabecular segmentation.

![Table 2: DICE scores, Jaccard indices, and Hausdorff distances (voxels) for comparison of trabecular segmentation  performed using IPL versus the `ORMIR_XCT` package. All scans were obtained from a second-generation HR-pQCT scanner (XtremeCT2, Scanco Medical) with an isotropic voxel size of 61µm. For each algorithm, Gaussian smoothing was performed with sigma = 0.5. Subsequently, segmentation was performed with lower and upper thresholds of 1,170 and 10,000 HU, respectively. DIP2: second distal interphalangeal joint, DIP3: third distal interphalangeal joint, TMC: trapeziometacarpal joint.\label{fig:Table2}](figures/Table2.png)

# References:
