%% Exercice 2.2   Calcul d'une série de Fourier
clear all
close all

% Visualiser les sommes partielles de la série de Fourier
T = 1;
time_step = T/100
N_harmonics = 3;
t_axis = -2*T:time_step:2*T-time_step;

figure(1)
somme_partielle = 0.*t_axis;
for n=1:N_harmonics
    somme_partielle = somme_partielle + sin(2*pi*n*t_axis)/(pi*n);
end

plot(t_axis,somme_partielle)
grid on
grid minor