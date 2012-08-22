function [] = super_experiment_filippos2( )

clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%EXPERIMENTS SETTINGS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network_radius = 50;
noOfNodes = 4000;
noOfEvents = 5000;
sensors_charging_number = 10;
charger_percentage = 0.4;

energy_c = 2;
range_c = 2.3;
communication_range = network_radius*sqrt((log(noOfNodes))/(pi*noOfNodes));
communication_range_greedy = range_c*network_radius*sqrt((log(noOfNodes))/(pi*noOfNodes));
total_energy_1 = 4*noOfEvents*communication_range*network_radius/2;
total_energy_2 = energy_c/3*noOfEvents*(network_radius^2)/2;

repetitions = 20;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


experiment_2_full_vs_partial(network_radius, noOfNodes, noOfEvents, sensors_charging_number, charger_percentage, communication_range, communication_range_greedy, total_energy_1, total_energy_2, repetitions);




