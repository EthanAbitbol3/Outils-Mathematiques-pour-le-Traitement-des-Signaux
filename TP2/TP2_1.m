%% Exercice 2.1   D�finition et visualisation d'un signal p�riodique
clear all
close all

T = 1;  % P�riode

time_step = T/100;

t_single_period=0:time_step:T-time_step;

f0=0.5-t_single_period;

plot(t_single_period,f0)                % Plot du motif en [0,T]

t_axis = -4*T:time_step:4*T-time_step;  % Intervalle pour le graphe de la fonction p�riodique
f_periodique = [f0 f0 f0 f0 f0 f0 f0 f0];           % Concatenation des motifs
figure(1)

plot(t_axis,f_periodique)
hold on
grid on
grid minor
