%% Exercice 2.3   Visualisation du spectre d'un signal périodique
clear all
close all

% Visualiser le spectre du signal périodique
N_harmonics = 100;
n_harm = -N_harmonics:1:N_harmonics;


x1 = n_harm;
y1 = zeros(1,length(x1));
x2 = x1;

c_n = (-1i)./(2*pi.*n_harm);
y2 = abs(c_n);

figure(2)
plot([x1; x2], [y1; y2],'k') %visualisation du spectre de fourrier des c_n
hold on
scatter(x2, y2, 'k', 'filled')
axis ([min(x2)-(N_harmonics/10) max(x2)+(N_harmonics/10) min(y2)-0.05 max(y2)+0.5])
title('spectre de fourier des c_n')
grid on
grid minor

figure(3)
plot(angle(c_n));% Visualisation de la phase des c_n
axis ([-(N_harmonics/10) length(angle(c_n))+(N_harmonics/10) min(angle(c_n))-1 max(angle(c_n))+1])
title('phase des c_n')
grid on
grid minor

