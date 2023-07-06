# Fixed-wing Aircraft and Helicopter Frequency Tables

This folder contains MATLAB files with frequency tables and DAG structures for fixed-wing aircraft and helicopter models at different altitude layers. Specifically, the following models are included:

- **Light, Medium, and Heavy aircraft models:** below 10000 ft, between 10000 and 25000 ft, and above 25000 ft.
- **Helicopter model:** below 10000 ft.

These frequency tables were constructed using Bayesian structures for the initial and transition distributions of each model, and they can be used as input to [MIT-LL software](https://github.com/Airspace-Encounter-Models/em-model-manned-bayes) for generating aircraft tracks.

Each MATLAB file contains four variables:

- **DAG_Initial:** an adjacency matrix representing the Bayesian structure for the initial distribution.
- **DAG_Transition:** an adjacency matrix representing the Bayesian structure for the transition distribution.
- **N_Initial:** frequency table counts for the initial distribution of each variable.
- **N_Transition:** frequency table counts for the transition distribution of each variable.

The ordering of variables in the adjacency matrix is essential in determining the conditional dependencies among them. For this dataset, the order used is:

**Initial:**

```text
Airspace, Altitude, Speed, Acceleration, Vertical Rate, Turn Rate.
```

**Transition:**

```text
Airspace, Altitude, Speed, Acceleration, Vertical Rate, Turn Rate, Acceleration+1 (next time step), Vertical Rate+1 (next time step), Turn Rate+1 (next time step).
```

Note that for the transition distribution, only the variables for the next time step are allowed to change.
