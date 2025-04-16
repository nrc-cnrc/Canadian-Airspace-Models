% Copyright (c) 2023 Carleton University and National Research Council Canada

function Plot_Distributions(selection)
switch selection
    case 'CYTZ'
        filename_wtc = sprintf('airmodel_43.38_-79.05_0_10.csv');
        filename_comb = sprintf('combined_43.38_-79.05_0_10.csv');
        Title = sprintf('Billy Bishop Toronto City Airport (CYTZ) 0-10000 ft');
        Num_var=8;
    case 'CYYZ'
        filename_wtc = sprintf('airmodel_43.43_-79.27_0_10.csv');
        filename_comb = sprintf('combined_43.43_-79.27_0_10.csv');
        Title = sprintf('Lester B. Pearson International Airport (CYYZ) 0-10000 ft');
        Num_var=8;
    case 'CYOW'
        filename_wtc = sprintf('airmodel_45.07_-75.31_0_10.csv');
        filename_comb = sprintf('combined_45.07_-75.31_0_10.csv');
        Title = sprintf('Ottawa Macdonald-Cartier International (CYOW) 0-10000 ft');
        Num_var=8;
    case 'CYUL'
        filename_wtc = sprintf('airmodel_45.21_-73.39_0_10.csv');
        filename_comb = sprintf('combined_45.21_-73.39_0_10.csv');
        Title = sprintf('Montréal–Trudeau International Airport (CYUL) 0-10000 ft');
        Num_var=8;
    case 'CYMX'
        filename_wtc = sprintf('airmodel_45.43_-73.67_0_10.csv');
        filename_comb = sprintf('combined_45.43_-73.67_0_10.csv');
        Title = sprintf('Montréal–Mirabel International Airport (CYMX) 0-10000 ft');
        Num_var=8;
    case 'CYTS'
        filename_wtc = sprintf('airmodel_48.32_-81.0_0_10.csv');
        filename_comb = sprintf('combined_48.32_-81.0_0_10.csv');
        Title = sprintf('Timmins Victor M. Power Airport (CYTS) 0-10000 ft');
        Num_var=6;
    case 'CYYJ'
        filename_wtc = sprintf('airmodel_48.39_-123.05_0_10.csv');
        filename_comb = sprintf('combined_48.39_-123.05_0_10.csv');
        Title = sprintf('Victoria International Airport Model (CYYJ) 0-10000 ft');
        Num_var=8;
    case 'CYVR'
        filename_wtc = sprintf('airmodel_48.94_-122.8_0_10.csv');
        filename_comb = sprintf('combined_48.94_-122.8_0_10.csv');
        Title = sprintf('Vancouver International Airport (CYVR) 0-10000 ft');
        Num_var=8;
    case 'CYWG'
        filename_wtc = sprintf('airmodel_49.65_-96.84_0_10.csv');
        filename_comb = sprintf('combined_49.65_-96.84_0_10.csv');
        Title = sprintf('Winnipeg James Armstrong Richardson International Airport (CYWG) 0-10000 ft');
        Num_var=7;
    case 'CYYR'
        filename_wtc = sprintf('airmodel_53.06_-59.99_0_10.csv');
        filename_comb = sprintf('combined_53.06_-59.99_0_10.csv');
        Title = sprintf('Canadian Forces Base Goose Bay (CYYR) 0-10000 ft');
        Num_var=7;
    case 'CYZF'
        filename_wtc = sprintf('airmodel_62.22_-113.9_0_10.csv');
        filename_comb = sprintf('combined_62.22_-113.9_0_10.csv');
        Title = sprintf('Aéroport de Yellowknife (CYZF) 0-10000 ft');
        Num_var=7;
    case 'CYFB'
        filename_wtc = sprintf('airmodel_63.5_-67.97_0_10.csv');
        filename_comb = sprintf('combined_63.5_-67.97_0_10.csv');
        Title = sprintf('Iqaluit International Airport (CYFB) 0-10000 ft');
        Num_var=6;
end

draw_layered_hist_All_Norm(filename_wtc,Title,Num_var)
figure(2)
draw_layered_hist_All(filename_wtc,Title,Num_var)
figure(3)
[stats]=Draw_Histograms_Combined(filename_comb,Title);
figure(4)
Pie_Chart_Plot(filename_wtc,Title,Num_var)