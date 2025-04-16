% Copyright (c) 2023 Carleton University and National Research Council Canada

function Stats=Draw_Histograms_Combined(filename_comb,Title)
data=readtable(filename_comb);
S_M=data(1:3,:);
S_M_Var=table2array(S_M(:,3:end));
[~,idx_col]=find(isnan(S_M_Var));
S_M_Var(:,unique(idx_col)) = [];
Edges=S_M_Var(1,:);
Edges(1,end+1)=table2array(S_M(2,2));
Counts=S_M_Var(3,:);
subplot(2,2,1)
histogram('BinEdges',Edges,'BinCounts',Counts)
xlim([0, 350]);
title('Speed', 'FontSize', 12)
xlabel("Knots", 'FontSize', 10)
try
    data_an = repelem(Edges(1:end-1), Counts);
    Stats(1,1) = mean(data_an);
    Stats(1,2) = mode(data_an);
    Stats(1,3) = std(data_an);
    Stats(1,4) = prctile(data_an, 25);
    Stats(1,5) = prctile(data_an, 50);
    Stats(1,6) = prctile(data_an, 75);
    data_an=[];
catch
    midpoints = (Edges(1:end-1) + Edges(2:end))/2;
    Stats(1,1) = sum(midpoints.*Counts)/sum(Counts);
    [~, ind] = max(Counts);
    Stats(1,2) = midpoints(ind);
    variance = sum(((midpoints - Stats(1,2)).^2).*Counts)/sum(Counts);
    Stats(1,3) = sqrt(variance);
    Stats(1,4) = 1;
    Stats(1,5) = 2;
    Stats(1,6) = 3;
end

tr_M=data(4:6,:);
tr_M_Var=table2array(tr_M(:,3:end));
[~,idx_col]=find(isnan(tr_M_Var));
tr_M_Var(:,unique(idx_col)) = [];
Edges=tr_M_Var(1,:);
Edges(1,end+1)=table2array(tr_M(2,2));
Edges=Edges/100;
Counts=tr_M_Var(3,:);
subplot(2,2,3)
histogram('BinEdges',Edges,'BinCounts',Counts)
xlim([-10, 10]);
title('Turn Rate', 'FontSize', 12)
xlabel("deg/sec", 'FontSize', 10)
try
    data_an = repelem(Edges(1:end-1), Counts);
    Stats(2,1) = mean(data_an);
    Stats(2,2) = mode(data_an);
    Stats(2,3) = std(data_an);
    Stats(2,4) = prctile(data_an, 25);
    Stats(2,5) = prctile(data_an, 50);
    Stats(2,6) = prctile(data_an, 75);
    data_an=[];
catch
    midpoints = (Edges(1:end-1) + Edges(2:end))/2;
    Stats(2,1) = sum(midpoints.*Counts)/sum(Counts);
    [~, ind] = max(Counts);
    Stats(2,2) = midpoints(ind);
    variance = sum(((midpoints - Stats(2,2)).^2).*Counts)/sum(Counts);
    Stats(2,3) = sqrt(variance);
    Stats(2,4) = 1;
    Stats(2,5) = 2;
    Stats(2,6) = 3;
end

vr_M=data(7:9,:);
vr_M_Var=table2array(vr_M(:,3:end));
[~,idx_col]=find(isnan(vr_M_Var));
vr_M_Var(:,unique(idx_col)) = [];
Edges=vr_M_Var(1,:);
Edges(1,end+1)=table2array(vr_M(2,2));
Counts=vr_M_Var(3,:);
subplot(2,2,4)
histogram('BinEdges',Edges,'BinCounts',Counts)
xlim([-3000 3000]);
title('Vertical Rate', 'FontSize', 12)
xlabel("feet/min", 'FontSize', 10)
try
    data_an = repelem(Edges(1:end-1), Counts);
    Stats(3,1) = mean(data_an);
    Stats(3,2) = mode(data_an);
    Stats(3,3) = std(data_an);
    Stats(3,4) = prctile(data_an, 25);
    Stats(3,5) = prctile(data_an, 50);
    Stats(3,6) = prctile(data_an, 75);
    data_an=[];
catch
    midpoints = (Edges(1:end-1) + Edges(2:end))/2;
    Stats(3,1) = sum(midpoints.*Counts)/sum(Counts);
    [~, ind] = max(Counts);
    Stats(3,2) = midpoints(ind);
    variance = sum(((midpoints - Stats(3,2)).^2).*Counts)/sum(Counts);
    Stats(3,3) = sqrt(variance);
    Stats(3,4) = 1;
    Stats(3,5) = 2;
    Stats(3,6) = 3;
end


ar_M=data(10:12,:);
ar_M_Var=table2array(ar_M(:,3:end));
[~,idx_col]=find(isnan(ar_M_Var));
ar_M_Var(:,unique(idx_col)) = [];
Edges=ar_M_Var(1,:);
Edges(1,end+1)=table2array(ar_M(2,2));
Edges=Edges/100;
Counts=ar_M_Var(3,:);
subplot(2,2,2)
histogram('BinEdges',Edges,'BinCounts',Counts)
xlim([-5, 5]);
title('Acceleration', 'FontSize', 12)
xlabel("Knots/sec", 'FontSize', 10)

try
    data_an = repelem(Edges(1:end-1), Counts);
    Stats(4,1) = mean(data_an);
    Stats(4,2) = mode(data_an);
    Stats(4,3) = std(data_an);
    Stats(4,4) = prctile(data_an, 25);
    Stats(4,5) = prctile(data_an, 50);
    Stats(4,6) = prctile(data_an, 75);
    data_an=[];
catch
    midpoints = (Edges(1:end-1) + Edges(2:end))/2;
    Stats(4,1) = sum(midpoints.*Counts)/sum(Counts);
    [~, ind] = max(Counts);
    Stats(4,2) = midpoints(ind);
    variance = sum(((midpoints - Stats(4,2)).^2).*Counts)/sum(Counts);
    Stats(4,3) = sqrt(variance);
    Stats(4,4) = 1;
    Stats(4,5) = 2;
    Stats(4,6) = 3;
end


sgtitle(Title)