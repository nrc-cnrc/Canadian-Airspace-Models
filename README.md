# Canadian Airspace Models  
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8118133.svg)](https://doi.org/10.5281/zenodo.8118133)

This repository contains statistical airspace models of aircraft behavior for 12 selected Canadian airports as well as a mixed model of Canada. These machine learned models were trained by the National Research Council Canada (NRC).

As the project continues to develop over the coming years, additional work is planned to be scoped for improvements and applications of the presented statistical models, to enable further efforts to ensure the safe and smooth integration of Remotely Piloted Aircraft Systems (RPAS) into the Canadian airspace.

This project is an ongoing, multi-year collaboration of the NRC with Transport Canada (TC),  Carleton University, and NAV CANADA, and was motivated by the work previously primarily completed by the Massachusetts Institute of Technology Lincoln Laboratory (MIT LL) for the [Airspace Encounter Models](https://airspace-encounter-models.github.io/) project. 

## Files

### Documents

The `Documents/` folder contains the following reports:

1. [LTR-FRL-2023-0055.pdf](Documents/LTR-FRL-2023-0055.pdf) details the process used for the statistical model creation, including an overview of the dataset and steps to generate Canadian statistical models. The report also includes the application and findings of the developed methodology for 12 airports across Canada.

2. [LTR-FRL-2023-0053.pdf](Documents/LTR-FRL-2023-0053.pdf) provides the detailed description of the airspace classes and sensor equipment requirements in Canada as well as in the 12 selected airports.

### Distributions Plot

The `Distributions_Plot/` folder contains matlab scripts to generate the statistical distributions for the selected Canadian airports as described in LTR-FRL-2023-0055.pdf. To run the codes for statistical distributions, execute the `Plot_Distributions_Main.m` file.

### Matlab Frequency Tables

The `Matlab_Frequency_Tables/` folder contains frequency tables for initial and transition distributions of Bayesian networks for the Canada-wide statistical airspace model, which can be used for further encounter generation between an RPAS and traditional aviation using the [`em-model-manned-bayes`](https://github.com/Airspace-Encounter-Models/em-model-manned-bayes) repository from the Airspace Encounter Models organization that is primarily administrated by MIT LL. Note MIT LL has not yet independently validated the use of these models with `em-model-manned-bayes`. Some modification to `em-model-manned-bayes` may be required to use these models.  

## Support

For technical support, consider posting a question under [Discussions](https://github.com/nrc-cnrc/Canadian-Airspace-Models/discussions).

## Issues

Post [Issues](https://github.com/nrc-cnrc/Canadian-Airspace-Models/issues) to report genuine bugs, mistakes or even small typos in the scripts. Note that issues are **not meant for technical support.** Please only open an issue for an error which is specific and reproducible.

## Collaborators

![carleton](images/carleton.png)

---

![nrc](images/nrc-footer.png)
