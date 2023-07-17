import argparse
import SimpleITK as sitk
from segmentation_evaluation import calculate_dice_and_jaccard

parser = argparse.ArgumentParser()
parser.add_argument("ref")
parser.add_argument("seg")
args = parser.parse_args()

# Parse arguments
ref = args.ref
seg = args.seg

ref_image = sitk.ReadImage(ref)
seg_image = sitk.ReadImage(seg)

ref = sitk.GetArrayFromImage(ref_image)
seg = sitk.GetArrayFromImage(seg_image)

dice, jaccard = calculate_dice_and_jaccard(ref, seg)

print(dice)
print(jaccard)
