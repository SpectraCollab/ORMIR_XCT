#!/bin/bash -u
RESAMPLE_SCRIPT="/Users/mkuczyns/Projects/Manskelab/scripts/resampleToImage.py"
EVAL_SCRIPT="/Users/mkuczyns/Projects/ORMIR_XCT/ormir_xct/util/seg_eval.py"

#-------------ACTUS_001-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_001_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_001_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_001_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_001_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_001_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_001_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_002-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_002_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_002_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_002_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_002_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_002_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_002_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_003-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_003_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_003_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_003_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_003_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_003_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_003_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_004-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_004_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_004_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_004_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_004_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_004_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_004_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_005-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_005_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_005_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_005_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_005_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_005_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_005_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_006-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_006_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_006_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_006_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_006_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_006_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_006_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_007-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_007_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_007_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_007_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_007_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_007_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_007_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_008-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_008_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_008_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_008_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_008_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_008_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_008_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd



#-------------ACTUS_009-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_009_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_009_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_009_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_009_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_009_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_009_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_010-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_010_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_010_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_010_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_010_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_010_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_010_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_011-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_011_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_011_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_011_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_011_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_011_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_011_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_012-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_012_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_012_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_012_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_012_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_012_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_012_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_013-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_013_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_013_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_013_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_013_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_013_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_013_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_014-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_014_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_014_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_014_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_014_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_014_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_014_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_015-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_015_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_015_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_015_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_015_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_015_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_015_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_016-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_016_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_016_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_016_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_016_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_016_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_016_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_017-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_017_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_017_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_017_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_017_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_017_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_017_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_018-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_018_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_018_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_018_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_018_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_018_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_018_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd



#-------------ACTUS_020-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_020_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_020_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_020_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_020_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_020_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_020_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_021-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_021_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_021_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_021_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_021_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_021_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_021_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_022-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_022_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_022_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_022_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_022_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_022_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_022_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_023-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_023_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_023_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_023_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_023_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_023_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_023_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_024-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_024_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_024_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_024_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_024_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_024_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_024_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_025-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_025_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_025_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_025_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_025_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_025_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_025_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_026-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_026_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_026_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_026_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_026_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_026_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_026_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_027-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_027_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_027_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_027_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_027_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_027_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_027_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_028-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_028_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_028_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_028_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_028_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_028_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_028_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_029-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_029_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_029_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_029_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_029_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_029_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_029_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_030-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_030_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_030_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_030_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_030_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_030_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_030_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_031-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_031_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_031_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_031_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_031_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_031_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_031_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_032-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_032_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_032_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_032_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_032_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_032_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_032_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_035-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_035_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_035_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_035_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_035_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_035_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_035_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_036-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_036_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_036_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_036_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_036_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_036_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_036_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_037-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_037_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_037_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_037_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_037_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_037_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_037_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_038-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_038_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_038_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_038_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_038_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_038_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_038_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_039-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_039_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_039_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_039_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_039_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_039_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_039_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_040-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_040_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_040_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_040_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_040_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_040_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_040_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

#-------------ACTUS_101-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_101_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_101_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_101_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_101_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_101_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_101_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_102-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_102_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_102_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_102_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_102_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_102_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_102_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_103-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_103_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_103_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_103_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_103_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_103_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_103_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_104-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_104_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_104_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_104_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_104_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_104_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_104_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_106-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_106_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_106_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_106_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_106_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_106_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_106_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_107-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_107_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_107_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_107_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_107_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_107_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_107_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_108-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_108_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_108_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_108_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_108_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_108_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_108_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd



#-------------ACTUS_109-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_109_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_109_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_109_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_109_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_109_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_109_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_110-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_110_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_110_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_110_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_110_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_110_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_110_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_111-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_111_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_111_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_111_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_111_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_111_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_111_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_112-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_112_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_112_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_112_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_112_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_112_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_112_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_113-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_113_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_113_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_113_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_113_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_113_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_113_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_115-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_115_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_115_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_115_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_115_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_115_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_115_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_116-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_116_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_116_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_116_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_116_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_116_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_116_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_117-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_117_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_117_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_117_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_117_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_117_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_117_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_118-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_118_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_118_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_118_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_118_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_118_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_118_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_119-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_119_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_119_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_119_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_119_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_119_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_119_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd



#-------------ACTUS_120-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_120_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_120_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_120_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_120_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_120_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_120_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_121-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_121_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_121_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_121_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_121_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_121_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_121_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_122-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_122_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_122_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_122_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_122_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_122_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_122_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_123-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_123_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_123_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_123_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_123_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_123_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_123_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_124-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_124_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_124_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_124_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_124_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_124_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_124_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_125-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_125_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_125_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_125_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_125_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_125_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_125_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_126-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_126_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_126_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_126_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_126_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_126_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_126_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_127-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_127_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_127_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_127_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_127_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_127_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_127_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_128-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_128_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_128_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_128_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_128_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_128_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_128_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_129-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_129_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_129_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_129_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_129_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_129_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_129_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_130-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_130_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_130_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_130_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_130_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_130_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_130_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_131-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_131_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_131_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_131_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_131_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_131_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_131_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_132-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_132_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_132_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_132_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_132_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_132_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_132_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_135-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_135_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_135_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_135_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_135_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_135_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_135_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_136-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_136_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_136_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_136_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_136_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_136_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_136_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_137-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_137_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_137_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_137_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_137_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_137_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_137_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_138-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_138_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_138_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_138_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_138_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_138_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_138_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_139-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_139_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_139_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_139_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_139_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_139_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_139_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------ACTUS_140-------------#
# MCP2
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_140_0M_MCP2_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_140_0M_MCP2_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_140_0M_MCP2_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# MCP3
IMG="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_140_0M_MCP3_SEG.nii"
REF="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_140_0M_MCP3_SEG_PY.nii"
OUTPUT="/Users/mkuczyns/Library/CloudStorage/OneDrive-UniversityofCalgary/ManskeLabImages/ORMIR_XCT/images/ACTUS_140_0M_MCP3_SEG_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd