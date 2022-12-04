import unittest

from ormir_xct.util.scanco_rescale import (
    convert_scanco_to_linear_attenuation, convert_scanco_to_hu,
    convert_scanco_to_bmd, convert_hu_to_linear_attenuation,
    convert_hu_to_scanco, convert_hu_to_bmd,
    convert_linear_attenuation_to_hu, convert_linear_attenuation_to_scanco, 
    convert_linear_attenuation_to_bmd
) 

class TestScancoRescale(unittest.TestCase):

    @unittest.skip("unimplemented")
    def test_placeholder(self):
        pass