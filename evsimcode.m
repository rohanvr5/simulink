%% input
m = 260 %% (kg) mass of EV

gr = 9.2 %% Gear Ratio

g = 9.81 %% (m/s^2)Acceleration due to gravity

cd = 0.8 %% Aero Drag co-efficient

cr = 0.05 %% Aero Drag co-efficient

a = 1 %% (m/s^2)Frontal Area

theta = 0.6457718232 %% (radian)Gradiant Angle

rho = 1.225 %% (kg/m³)Density of Air 

rw = 0.2921 %%(m) Radius of wheel

te = 0.88%% TransmissionEfficiency

me = 0.85 %%Motor Controller 

ce = 0.9 %% Controller Efficiency

ap= 1.07 %%Auxillary  Power 

v = 48%%(Volts) Battery Pack Voltage 

cell_c = 5 %%(Ah) Cell Capacity 

cell_v = 3.6 %%(Volts)Cell Nominal voltage 

cell_w = 70 %% (grams)Mass of cell 

lap = 10%%Total Number of laps

%% input block
data = xlsread ('socv1c.xlsx')
data2 = xlsread ('PTSvC.xlsx')

%% data read
soc = data(:,1)
ocv = data(:,2)
cur = data2(:,1)
pow = data2(:,2)
tor = data2(:,2)
spd = data2(:,4)
eff = data2(:,5)
%% simulate
sim('ev4(1).slx')