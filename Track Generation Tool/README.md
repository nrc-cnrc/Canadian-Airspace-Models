# Track Generation Tool

This tool enables users to generate simulated tracks based on Canadian airspace models. It allows customization of the number of tracks, their duration, and the model used. Output files and plots are automatically named using the model name, unless a custom name is provided.

---

## Installation

To install the library from a `.whl` file:

1. Download the `.whl` file (e.g., `cam_track_gen-0.1.0-py3-none-any.whl`).
2. Open a terminal and navigate to the directory containing the file.
3. Run the following command:

   ```bash
   pip install cam_track_gen-0.1.0-py3-none-any.whl
   ```

---

## Usage

### Generate Simulated Tracks

```python
from cam_track_gen import gen_track

sample_time = 250       # Duration of each track simulation in seconds
track_num = 10          # Number of tracks to generate
filename = 'Light_Aircraft_Below_10000_ft_Data.mat'  # Model file (.mat)
seed = False            # Set to True for reproducible results

RESULTS = gen_track(filename, sample_time, track_num, seed=seed)
```

---

### Plot the Tracks

```python
from cam_track_gen import generate_plot

generate_plot(RESULTS)
```

- The plot title will use the model name by default, e.g., `"Light Aircraft Below 10000 ft Data"`.

---

### Save as MATLAB File

```python
from cam_track_gen import save_as_Matlab

# Optionally pass a custom name (without extension). If omitted, model name is used.
save_as_Matlab(RESULTS)                 # → Light_Aircraft_Below_10000_ft_Data_Result.mat
save_as_Matlab(RESULTS, name="track")   # → track_Result.mat
```

- If a file with the same name exists, `_1`, `_2`, etc. will be appended automatically.

---

### Save as CSV Files

```python
from cam_track_gen import save_to_csv

# Optionally pass a custom base name (without extension)
save_to_csv(RESULTS)                    # → Light_Aircraft_Below_10000_ft_Data_Result.csv
save_to_csv(RESULTS, filename_base="tracks")  # → tracks_Result.csv
```

- If the file exceeds 1,000,000 rows, it will be split into multiple numbered files.
- If a file with the same name exists, `_1`, `_2`, etc. will be appended automatically.

---

## Testing

To verify the library works:

1. Download the file `test_CGT.py` and place it in the same directory where your models are stored.
2. Open a terminal and navigate to the directory containing `test_CGT.py`.
3. Run the test with:

   ```bash
   python test_CGT.py
   ```

- The script will:
  - Generate 10 tracks.
  - Plot them with the correct model title.
  - Save them as:
    - `Light_Aircraft_Below_10000_ft_Data_Result.mat`
    - `Light_Aircraft_Below_10000_ft_Data_Result.csv`

Close the plot window to finish the test.