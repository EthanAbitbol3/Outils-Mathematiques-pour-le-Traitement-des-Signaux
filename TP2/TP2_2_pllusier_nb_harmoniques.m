%% Exercice 2.2   Calcul d'une série de Fourier
% Visualiser les sommes partielles de la série de Fourier
T = 1;
time_step = T/100;
N_harmonics = [1,2,3,10,100];
%N_harmonics = 3;
t_axis = -2*T:time_step:2*T-time_step;

figure(1)
for m=1:5
    somme_partielle = 0.*t_axis;
    for n=1:N_harmonics(m)
        somme_partielle = somme_partielle + sin(2*pi*n*t_axis)/(pi*n);
    end
    plot(t_axis,somme_partielle)
    hold on
end
legend('1 harmonique', '2 harmoniques', '3 harmoniques', '10 harmoniques', '100 harmoniques');
grid on
grid minor