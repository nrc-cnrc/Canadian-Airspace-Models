# Distributions plot

## Overview

The `Plot_Distributions_Main.m` code generates distribution plots for 12 selected airports. The user is required to select one airport from the interactive window, and as output generates 4 plots:

1. Distributions of variables divided by WTC (Wake Turbulance Class) at normal Y scale
2. Distribution of variables divided by WTC at logarithmic Y scale (to appreciate the underlying distribution shape)
3. Distribution of variables combined (all WTC)
4. Pie chart of WTC percentage

## Usage

To run the code, the user only needs to execute the `Plot_Distributions_Main.m` file. Upon execution, an interactive window will prompt the user to select one of the following 12 airports and click `OK`:

- `CYTZ`: Billy Bishop Toronto City Airport
- `CYYZ`: Toronto Pearson International Airport
- `CYOW`: Ottawa Macdonald-Cartier International Airport
- `CYUL`: Montréal-Pierre Elliott Trudeau International Airport
- `CYMX`: Montréal-Mirabel International Airport
- `CYTS`: Timmins Victor M. Power Airport
- `CYYJ`: Victoria International Airport
- `CYVR`: Vancouver International Airport
- `CYWG`: Winnipeg James Armstrong Richardson International Airport
- `CYYR`: Goose Bay Airport
- `CYZF`: Yellowknife Airport
- `CYFB`: Iqaluit Airport

## Output

After selecting the airport, the code generates four different plots as described above.
