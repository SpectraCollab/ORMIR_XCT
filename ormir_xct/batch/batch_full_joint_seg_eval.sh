#!/bin/bash -u
RESAMPLE_SCRIPT="/Users/mkuczyns/Projects/Manskelab/scripts/resampleToImage.py"
EVAL_SCRIPT="/Users/mkuczyns/Projects/ORMIR_XCT/ormir_xct/util/seg_eval.py"

#-------------HandOA_001-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/001_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/001_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/001_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/001_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/001_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/001_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/001_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_002-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/002_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/002_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/002_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/002_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/002_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/002_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/002_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_003-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/003_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/003_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/003_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/003_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/003_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/003_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/003_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_004-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/004_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/004_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/004_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/004_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/004_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/004_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/004_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_006-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/006_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/006_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/006_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/006_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/006_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/006_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/006_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_007-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/007_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/007_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/007_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/007_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/007_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/007_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/007_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_009-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/009_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/009_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/009_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/009_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/009_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/009_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/009_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd



#-------------HandOA_010-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/010_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/010_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/010_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/010_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/010_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/010_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/010_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_012-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/012_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/012_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/012_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/012_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/012_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/012_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/012_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_013-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/013_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/013_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/013_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/013_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/013_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/013_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/013_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_101-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/101_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/101_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/101_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/101_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/101_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/101_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/101_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_102-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/102_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/102_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/102_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/102_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/102_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/102_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/102_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_103-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/103_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/103_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/103_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/103_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/103_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/103_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/103_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_104-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/104_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/104_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/104_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/104_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/104_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/104_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/104_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_106-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/106_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/106_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/106_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/106_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/106_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/106_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/106_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_107-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/107_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/107_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/107_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/107_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/107_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/107_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/107_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_109-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/109_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/109_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/109_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/109_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/109_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/109_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/109_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd



#-------------HandOA_110-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/110_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/110_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/110_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/110_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/110_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/110_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/110_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_112-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/112_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/112_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/112_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/112_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/112_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/112_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/112_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd


#-------------HandOA_113-------------#
# DIP2
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/113_DIP2_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP2_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/113_DIP2_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# DIP3
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/113_DIP3_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_DIP3_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/113_DIP3_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd

# TMC
IMG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC_MASK.nii"
REF="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/113_CMC_JOINT.nii"
OUTPUT="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC_MASK_RESAMPLED.nii"
cmd="python \"${RESAMPLE_SCRIPT}\" \"${IMG}\" \"${REF}\" \"${OUTPUT}\" -i nearestneighbor"
echo $cmd
eval $cmd
PY_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_bmd_comparison/113_CMC_MASK_RESAMPLED.nii"
IPL_SEG="/Users/mkuczyns/Desktop/ORMIR_XCT_BlandAltman/handOA_jsw_comparision/113_CMC_JOINT.nii"
cmd="python \"${EVAL_SCRIPT}\" \"${IPL_SEG}\" \"${PY_SEG}\""
echo $cmd
eval $cmd