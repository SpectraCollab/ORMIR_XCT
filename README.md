# ORMIR_2022
ORMIR_XCT is a Python package for processing high resolution peripheral computed tomography (HR-pQCT) scans. Development of this project began during the “Building the Jupyter Community in Musculoskeletal Imaging Research” workshop hosted by the Open and Reproducible Musculoskeletal Imaging Research (ORMIR) group.

## Installation
### Step 1: Install the ORMIR_XCT Anaconda Environment:
`conda env create -f environment.yml`

If using an Apple M1, M2, or M3 processor, run the following command instead:
`CONDA_SUBDIR=osx-64 conda env create -f environment.yml`

### Step 2: Activate the Anaconda Environment:
`conda activate ormir_xct`

### Step 3: Install the Package:
`pip install -e .`

### Step 4: Run Scripts:
The modules in the `ormir_xct` directory can now be run. Examples for each module are provided in the `examples` directory. 