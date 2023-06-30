
![Logos2](https://github.com/nrc-cnrc/Canadian-Airspace-Models/assets/58992009/a84be70c-1d77-4bfd-a9f0-c465548351ae)



# CANADIAN AIRSPACE MODELS




This GitHub repository contains statistical airspace models for 12 selected Canadian airports as well as a mixed model of Canada.

As the project continues to develop over the coming years, additional work is planned to be scoped for improvements and applications of the presented statistical models, to enable further efforts to ensure the safe and smooth integration of Remotely Piloted Aircraft Systems (RPAS) into the Canadian airspace.

This project is an ongoing, multi-year collaboration between Transport Canada (TC), the National Research Council of Canada (the NRC), Carleton University, and NAV CANADA, and was inspired by the work previously done by the Massachusetts Institute of Technology Lincoln Laboratory (MIT-LL).

Contact iryna.borshchova@nrc-cnrc.gc.ca or jeremylaliberte@cunet.carleton.ca for issues or suggestions.


## Documents folder

1. LTR-FRL-2023-0055.pdf details the process used for the statistical model creation, including an overview of the dataset and steps to generate Canadian statistical models. The report also includes the application and findings of the developed methodology for 12 airports across Canada.

2. LTR-FRL-2023-0053.pdf provides the detailed description of the airspace classes and sensor equipment requirements in Canada as well as in the 12 selected airports. 


## Distributions Plot folder

This folder contains matlab scripts to generate the statistical distributions for the selected Canadian airports as described in LTR-FRL-2023-0055.pdf

To run the codes for statistical distributions, execute the Plot_Distributions_Main.m file. 


## Matlab Frequency Tables folder

This folder contains frequency tables for initial and transition distributions of Bayesian networks for the Canada-wide statistical airspace model, which can be used for further encounter generation between an RPAS and traditional aviation.

