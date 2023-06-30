% Copyright (c) 2023 Carleton University and National Research Council Canada

function [speedx, turnx, vratex, accelx, speedy, turny, vratey, accely] = hist_func(data, offset, wtc, draw_hist)
    S_M=data(1+offset:3+offset,:);
    S_M_Var=table2array(S_M(:,3:end));
    [~,idx_col]=find(isnan(S_M_Var));
    S_M_Var(:,unique(idx_col)) = [];
    speedx=S_M_Var(1,:);
    speedx(1,end+1)=table2array(S_M(2,2));
    speedy=S_M_Var(3,:);
    if draw_hist
        subplot(2,2,1)
        histogram('BinEdges',speedx,'BinCounts',speedy)
        title('Speed')
    end
%     idx=find()
    tr_M=data(4+offset:6+offset,:);
    tr_M_Var=table2array(tr_M(:,3:end));
    [~,idx_col]=find(isnan(tr_M_Var));
    tr_M_Var(:,unique(idx_col)) = [];
    turnx=tr_M_Var(1,:);
    turnx(1,end+1)=table2array(tr_M(2,2));
    idx_1=1;
    idx_2=size(turnx,2);
%     if max(turnx)>2000
%         [~,idx_2]=find(turnx==2000);
%     end
%     if min(turnx)<-2000
%         [~,idx_1]=find(turnx==-2000);
%     end
    turnx=turnx(1,idx_1:idx_2);
    turny=tr_M_Var(3,idx_1:idx_2-1);
    if draw_hist
        subplot(2,2,2)
        histogram('BinEdges',turnx,'BinCounts',turny)
        xlim([-20, 20]);
        title('Turn Rate')
    end
    
    vr_M=data(7+offset:9+offset,:);
    vr_M_Var=table2array(vr_M(:,3:end));
    [~,idx_col]=find(isnan(vr_M_Var));
    vr_M_Var(:,unique(idx_col)) = [];
    vratex=vr_M_Var(1,:);
    vratex(1,end+1)=table2array(vr_M(2,2));
    vratey=vr_M_Var(3,:);
    if draw_hist
        subplot(2,2,3)
        histogram('BinEdges',vratex,'BinCounts',vratey)
        xlim([-8000 8000]);
        title('Vertical Rate')
    end
    
    ar_M=data(10+offset:12+offset,:);
    ar_M_Var=table2array(ar_M(:,3:end));
    [~,idx_col]=find(isnan(ar_M_Var));
    ar_M_Var(:,unique(idx_col)) = [];
    accelx=ar_M_Var(1,:);
    accelx(1,end+1)=table2array(ar_M(2,2));
    accelx=accelx;
    accely=ar_M_Var(3,:);
    if draw_hist
        subplot(2,2,4)
        histogram('BinEdges',accelx,'BinCounts',accely)
        title('Acceleration')
    end
    
    if draw_hist
        sgtitle(strcat(wtc, ' aircraft'))
    end

end
