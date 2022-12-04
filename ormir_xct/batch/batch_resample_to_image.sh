#!/bin/bash -u
SCRIPT="/Users/mkuczyns/Projects/Manskelab/scripts/resampleToImage.py"

#-------------HandOA_001-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_002-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_003-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_004-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_006-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_007-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_009-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd



#-------------HandOA_010-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_012-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_013-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_101-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_102-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_103-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_104-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_106-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_107-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_109-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd



#-------------HandOA_110-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_112-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd


#-------------HandOA_113-------------#
# DIP2 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP2 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# DIP3 PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC DST
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC_DST.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC_DST_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd

# TMC PRX
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC_PRX.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC_PRX_RESAMPLED.nii"
cmd="python \"${SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd