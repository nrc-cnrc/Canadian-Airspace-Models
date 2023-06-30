% Copyright (c) 2023 Carleton University and National Research Council Canada

function Pie_Chart_Plot(filename_wtc,Title,Num_var)
if Num_var==7
    wtc_names = ["Medium", "Light", "Heavy", "Helicopter", "Ultralight", "Military", "Unknown"];
elseif Num_var==6
    wtc_names = ["Medium", "Light", "Heavy", "Helicopter",  "Military", "Unknown"];
elseif Num_var==5
    wtc_names = ["Medium", "Light", "Heavy", "Helicopter",  "Gyrocopter", "Military", "Unknown"];
else
    wtc_names = ["Medium", "Light", "Heavy", "Helicopter", "Gyrocopter", "Ultralight", "Military", "Unknown"];
end
offsets = [0, 12, 24, 36, 48, 60, 72, 84];
data = readtable(filename_wtc);

for i = 1:length(wtc_names)
    [speedx, turnx, vratex, accelx, speedy, turny, vratey, accely] = hist_func(data, offsets(i), wtc_names(i), false);
    counts_S(i,1)=sum(speedy);
    counts_S(i,2)=sum(turny);
    counts_S(i,3)=sum(vratey);
    counts_S(i,4)=sum(accely);
end

A=(counts_S(1:4,1));
if Num_var==8
    A(5,1)=sum(counts_S(5:7,1));
    A(6,1)=(counts_S(8,1));
elseif Num_var==7 || Num_var==5
    A(5,1)=sum(counts_S(5:6,1));
    A(6,1)=(counts_S(7,1));
else
    A(5,1)=sum(counts_S(5,1));
    A(6,1)=(counts_S(6,1));
end
explode = [0 1 0 1 0 1];
pie(A,explode)
legend("Medium", "Light", "Heavy", "Helicopter", "Others", "Unknown",'FontSize', 10)
title(Title,'FontSize', 14)
txt = findobj(gca, 'Type', 'text');
% Set font size of percentage text
set(txt, 'FontSize', 12);