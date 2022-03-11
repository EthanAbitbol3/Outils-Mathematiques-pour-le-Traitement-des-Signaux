
% 4 - Echantillonage

clear all
close all


%% Exercice 4.1  Échantillonnage idéal d’un signal

T = 2;  % Durée du signal
time_step = T/5000;
t_interv=0:time_step:T;
nu_1=?????; nu_2=?????;     % à completer avec le signal à interpoler
fun = @(t_interv) % à completer avec le signal à interpoler
signal = fun(t_interv);


%% Exercices 4.1.1 et 4.1.2    Signal bien échantillonné et sa reconstruction / Signal sous-échantillonné et sa reconstruction


%% Question 1

figure(1)
% plot du signal

periode_ech =  % à compléter

% paramètres pour l'échantillonnage (à ne pas modifier)
no_ech = T/periode_ech+1;                  % nombre d'échantillons
no_ech = 2^nextpow2(no_ech);               % nombre d'échantillons arrondi à la première puissance de 2 (plus simple pour calculer sa transformée)
periode_ech = T/(no_ech-1);                % période d'échantillonage ajousté
echantillons = 0:periode_ech:T;            % instants d'échantillonage
signal_echantillone = fun(echantillons);   % signal d'échantilloné

% Visualisation signal echantillonné
figure(2)
% à compléter avec le code du fichier TP2.m


%% Question 2

spectre = %à compléter: utiliser la fonction Matlab "fft"
% Définition de l'axe des fréquences (ne pas modifier)
freq_step=1/periode_ech/no_ech;
freq = -1/periode_ech+freq_step:freq_step:1/periode_ech-freq_step;
spectre_echantillonne(1:no_ech) = spectre;            % Définition du spectre pour fréquences négatives (pas fait par Matlab)
spectre_echantillonne(no_ech:1:2*no_ech-1) = spectre; % Définition du spectre pour fréquences négatives (pas fait par Matlab)
figure(3)
% plot du module du "spectre_echantillonne"


%% Question 3

% Filtrage de la transformée de Fourier du signal échantilloné (nécessaire avent de reconstruire le signal)
spectre_filtre = % à completer avec l'opération de filtrage
figure(4)
% plot du module du "spectre_filtre"


%% Question 4

% Inversion de la transformée de Fourier filtrée (ne pas modifier)
spectre_pour_inversion(1:0.5*no_ech)        = spectre_filtre(no_ech:no_ech+0.5*no_ech-1);
spectre_pour_inversion(0.5*no_ech+1:no_ech) = spectre_filtre(no_ech-0.5*no_ech+1:no_ech);
freq_pour_inversion=0:freq_step:1/periode_ech-freq_step;
signal_samples = %à compléter: utiliser la fonction Matlab "ifft" et diviser le résultat par "periode_ech"  % Inversion de Fourier

% Visualiser les échantillons du signal reconstruit (prendre leur partie reelle "real(signal_samples)" )
figure(5)
% utiliser la fonction "scatter" pour visualiser les echantillons real(signal_samples)
hold on


%% Question 5

% plot du signal originaire
% calcul du signal interpolé avec un dévéloppement de sinc
% plot du signal interpolé


%% Question 6

figure(6)
% Plot du signal originaire
% Plot des premiers trois termes du dévéloppement en sinc



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Exercices 4.1.3     Échantillonage réel d’un signal

figure(7)
plot(t_interv,peigne_portes(t_interv,periode_ech,0.1*periode_ech,fun))  % Dèfinir la fonction peigne_portes dans le fichier "peigne_portes.m"
hold on
plot(t_interv,fun(t_interv))



