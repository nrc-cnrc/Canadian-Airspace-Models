% Copyright (c) 2023 Carleton University and National Research Council Canada

function draw_layered_hist_All_Norm(filename_wtc,Title,Num_var)
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
    
    subplot(2,2,1)
    ax1 = gca;
    hold(ax1, 'on')
    histogram(ax1, 'BinEdges',speedx,'BinCounts',speedy, 'DisplayStyle', 'stairs');

end

xlim([0, 350]);
title("Speed", 'FontSize', 12)
xlabel("Knots", 'FontSize', 10)
legend(wtc_names)
for i = 1:length(wtc_names)
    [speedx, turnx, vratex, accelx, speedy, turny, vratey, accely] = hist_func(data, offsets(i), wtc_names(i), false);
    
    subplot(2,2,2)
    ax2 = gca;
    hold(ax2, 'on')
    histogram(ax2, 'BinEdges',accelx./100,'BinCounts',accely, 'DisplayStyle', 'stairs');
    

end
xlim([-5, 5]);
title("Acceleration", 'FontSize', 12)
xlabel("Knots/sec", 'FontSize', 10)
legend(wtc_names)


for i = 1:length(wtc_names)
    [speedx, turnx, vratex, accelx, speedy, turny, vratey, accely] = hist_func(data, offsets(i), wtc_names(i), false);
    
    subplot(2,2,3)
    ax3 = gca;
    hold(ax3, 'on')
    histogram(ax3, 'BinEdges',turnx./100,'BinCounts',turny, 'DisplayStyle', 'stairs');
    

end
xlim([-10, 10]);
title("Turn Rate", 'FontSize', 12)
xlabel("deg/sec", 'FontSize', 10)
legend(wtc_names)

for i = 1:length(wtc_names)
    [speedx, turnx, vratex, accelx, speedy, turny, vratey, accely] = hist_func(data, offsets(i), wtc_names(i), false);
    
    subplot(2,2,4)
    ax4 = gca;
    hold(ax4, 'on')
    histogram(ax4, 'BinEdges',vratex,'BinCounts',vratey, 'DisplayStyle', 'stairs');
    

end
xlim([-3000, 3000]);
legend(wtc_names)
title("Vertical Rate", 'FontSize', 12)
xlabel("feet/min", 'FontSize', 10)


sgtitle(Title)