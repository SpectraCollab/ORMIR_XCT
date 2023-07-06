"""
test_scrub_vms_extension.py

Created by:   Michael Kuczynski
Created on:   June 29, 2022

Description: Test removal of VMS version numbers
"""

import os
import shutil
import tempfile
import unittest

from ormir_xct.util.scrub_vms_extension import scrub_vms_extension


class TestScrubVMSExtension(unittest.TestCase):
    def setUp(self):
        self.input_filenames = [
            "test_aim.AIM;1",
            "test_aim_2.AIM",
            "test_isq.ISQ;6",
            "test_tif.TIF;1234567",
            "test_txt.txt",
        ]

        self.output_filenames = [
            "test_aim.AIM",
            "test_aim_2.AIM",
            "test_isq.ISQ",
            "test_tif.TIF",
            "test_txt.txt",
        ]

        # Create a temp directory
        self.test_dir = tempfile.mkdtemp()

        # Create fake files
        for filename in self.input_filenames:
            with open(os.path.join(self.test_dir, filename), "w") as fp:
                fp.write("")

        for input_filename, output_filename in zip(
            self.input_filenames, self.output_filenames
        ):
            self.assertTrue(os.path.isfile(os.path.join(self.test_dir, input_filename)))

        # Run commands
        scrub_vms_extension(self.test_dir)

    def tearDown(self):
        shutil.rmtree(self.test_dir)

    def test_scrub_vms_extension(self):
        self.assertTrue(os.path.isfile(os.path.join(self.test_dir, "test_aim.AIM")))
        self.assertTrue(os.path.isfile(os.path.join(self.test_dir, "test_aim_2.AIM")))
        self.assertTrue(os.path.isfile(os.path.join(self.test_dir, "test_isq.ISQ")))
        self.assertTrue(os.path.isfile(os.path.join(self.test_dir, "test_tif.TIF")))
        self.assertTrue(os.path.isfile(os.path.join(self.test_dir, "test_txt.txt")))

        self.assertFalse(os.path.isfile(os.path.join(self.test_dir, "test_aim.AIM;1")))
        self.assertFalse(os.path.isfile(os.path.join(self.test_dir, "test_isq.ISQ;6")))
        self.assertFalse(
            os.path.isfile(os.path.join(self.test_dir, "test_tif.TIF;1234567"))
        )
