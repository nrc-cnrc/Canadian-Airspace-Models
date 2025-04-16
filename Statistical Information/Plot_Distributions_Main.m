% Copyright (c) 2023 Carleton University and National Research Council Canada

%% Plot Distributions for Selected Airports
% This code generates distribution plots for 12 selected airports.
% As input, the user is required to select one airport from the interactive
% window and click "OK", and as output generates 4 plots:
% 1) Distributions of variables divided by WTC at normal Y scale
% 2) Distribution of variables divided by WTC at logarithmic Y scale (to appreciate the underlying distribution shape)
% 3) Distribution of variables combined for all WTC
% 4) Pie chart of WTC percentages


% Define the options for the user to choose from
options = {'CYTZ', 'CYYZ', 'CYOW', 'CYUL', 'CYMX', 'CYTS','CYYJ', 'CYVR', 'CYWG', 'CYYR', 'CYZF', 'CYFB'};

[selection,ok] = listdlg('PromptString','Select an airport:',...
                         'SelectionMode','single',...
                         'ListString',options);

% Check if the user clicked the OK button
if ok == 1
    % Use the user's selection
    fprintf('You selected %s\n', options{selection});
    fprintf('Please hold while your plots are being generated.\n');
    Plot_Distributions(options{selection})
else
    % User clicked the Cancel button or closed the dialog box
    fprintf('You cancelled the selection.\n');
end

