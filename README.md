# ORMIR_XCT

# This repository has been moved to the ORMIR-XCT organization page. [Visit the new ORMIR_XCT repository here.](https://github.com/ORMIR-XCT/ORMIR_XCT)

---

**By:** [Michael T. Kuczynski](https://www.linkedin.com/in/mkuczyns/), [Nathan J. Neeteson](https://www.linkedin.com/in/nathan-neeteson/), [Kathryn S. Stok](https://www.linkedin.com/in/kstok/), [Andrew J. Burghardt](https://www.linkedin.com/in/aburghardt/), [Michelle A. Espinosa Hernandez](https://www.linkedin.com/in/michelleaespinosah/), [Jared Vicory](https://www.kitware.com/jared-vicory/), [Justin J. Tse](https://www.linkedin.com/in/justin-j-tse/), [Pholpat Durongbhan](https://www.linkedin.com/in/pholpatd/), [Serena Bonaretti](https://sbonaretti.github.io/), [Andy Kin On Wong](https://www.linkedin.com/in/andy-kin-on-wong-76408859/), [Steven K. Boyd](https://mccaig.ucalgary.ca/boyd), [Sarah L. Manske](https://www.linkedin.com/in/sarah-manske-b5402b41/), 2023  
**Version:** 1.0

- ORMIR_XCT is a Python package for processing high resolution peripheral computed tomography (HR-pQCT) scans. 
- Development of this project began during the “Building the Jupyter Community in Musculoskeletal Imaging Research” workshop hosted by the Open and Reproducible Musculoskeletal Imaging Research (ORMIR) group.

---

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

---

## Example Jupyter Notebooks
- Example Jupyter Notebooks demonstrating the major functionality of the ORMIR_XCT package are provided in the *[examples](https://github.com/SpectraCollab/ORMIR_XCT/tree/main/examples)* directory.

---

## Ways to Contribute
### Reporting Bugs
- Bugs can be reported by creating a new GitHub issue in this repository. For each bug, please provide details on how to reproduce the bug and the specific error message (if possible).

---

### Contributing New Features
- To add a new feature, expand existing functionality, add documentation, or other contributions, please submit a new GitHub issue outlining your contribution in detail. 
- When submitting a new pull request, ensure you outline what you have changed and why it is necessary to make this change.

---

## Citation
When using the ORMIR_XCT package, please use the following citation:
- *Kuczynski et al., (2024). ORMIR_XCT: A Python package for high resolution peripheral quantitative computed tomography image processing. Journal of Open Source Software, 9(97), 6084, https://doi.org/10.21105/joss.06084*
