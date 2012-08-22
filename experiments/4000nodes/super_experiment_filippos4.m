function [] = super_experiment_filippos4( )

clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%EXPERIMENTS SETTINGS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network_radius = 50;
noOfNodes = 4000;
noOfEvents = 5000;
sensors_charging_number = 10;
charger_percentage = 0.2;

energy_c = 3;
range_c = 2.3;
communication_range = network_radius*sqrt((log(noOfNodes))/(pi*noOfNodes));
communication_range_greedy = range_c*network_radius*sqrt((log(noOfNodes))/(pi*noOfNodes));
total_energy_1 = 6*noOfEvents*communication_range*network_radius/2;
total_energy_2 = energy_c/3*noOfEvents*(network_radius^2)/2;

repetitions = 20;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment_4_our_vs_naive(network_radius, noOfNodes, noOfEvents, sensors_charging_number, charger_percentage, communication_range, communication_range_greedy, total_energy_1, total_energy_2, repetitions);






