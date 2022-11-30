import unittest

import numpy as np
from ormir_xct.bone_morphometry.standard_distal_morphometry import standard_distal_morphometry


class TestStandardDistalMorphometry(unittest.TestCase):

    def test_with_random_data(self):
        shape = (20, 20, 20)
        image = 500*np.random.rand(*shape)+300
        cort_mask = np.zeros_like(image, dtype=bool)
        cort_mask[2:18, 2:18, 2:8] = True
        trab_mask = np.zeros_like(image, dtype=bool)
        trab_mask[2:18, 2:18, 12:18] = True
        standard_distal_morphometry(image, cort_mask, trab_mask)
