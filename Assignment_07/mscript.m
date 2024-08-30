%% load data
Data = xlsread("Battery_Parameters.xlsx");

%% read SOC from data
SOC = Data(:, 1);
OCV = Data(:, 2);
R_Charge = Data(:, 3);
R_Discharge = Data(:,4);

%% polt
plot(SOC, OCV);
figure
plot(SOC, R_Charge);
figure
plot(SOC, R_Discharge);


%% simulate 

% current 
I = 2.3;
% battery capacity (converting it from Amp-hr to Amp-sec)
Cn = 2.3 * 60 * 60;
Sim_time = 60 * 60;
sim("simfile.slx");
disp("done");