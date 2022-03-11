
% 4 - Echantillonage

clear all
close all


%% Exercice 4.1  �chantillonnage id�al d�un signal

T = 2;  % Dur�e du signal
time_step = T/5000;
t_interv=0:time_step:T;
nu_1=?????; nu_2=?????;     % � completer avec le signal � interpoler
fun = @(t_interv) % � completer avec le signal � interpoler
signal = fun(t_interv);


%% Exercices 4.1.1 et 4.1.2    Signal bien �chantillonn� et sa reconstruction / Signal sous-�chantillonn� et sa reconstruction


%% Question 1

figure(1)
% plot du signal

periode_ech =  % � compl�ter

% param�tres pour l'�chantillonnage (� ne pas modifier)
no_ech = T/periode_ech+1;                  % nombre d'�chantillons
no_ech = 2^nextpow2(no_ech);               % nombre d'�chantillons arrondi � la premi�re puissance de 2 (plus simple pour calculer sa transform�e)
periode_ech = T/(no_ech-1);                % p�riode d'�chantillonage ajoust�
echantillons = 0:periode_ech:T;            % instants d'�chantillonage
signal_echantillone = fun(echantillons);   % signal d'�chantillon�

% Visualisation signal echantillonn�
figure(2)
% � compl�ter avec le code du fichier TP2.m


%% Question 2

spectre = %� compl�ter: utiliser la fonction Matlab "fft"
% D�finition de l'axe des fr�quences (ne pas modifier)
freq_step=1/periode_ech/no_ech;
freq = -1/periode_ech+freq_step:freq_step:1/periode_ech-freq_step;
spectre_echantillonne(1:no_ech) = spectre;            % D�finition du spectre pour fr�quences n�gatives (pas fait par Matlab)
spectre_echantillonne(no_ech:1:2*no_ech-1) = spectre; % D�finition du spectre pour fr�quences n�gatives (pas fait par Matlab)
figure(3)
% plot du module du "spectre_echantillonne"


%% Question 3

% Filtrage de la transform�e de Fourier du signal �chantillon� (n�cessaire avent de reconstruire le signal)
spectre_filtre = % � completer avec l'op�ration de filtrage
figure(4)
% plot du module du "spectre_filtre"


%% Question 4

% Inversion de la transform�e de Fourier filtr�e (ne pas modifier)
spectre_pour_inversion(1:0.5*no_ech)        = spectre_filtre(no_ech:no_ech+0.5*no_ech-1);
spectre_pour_inversion(0.5*no_ech+1:no_ech) = spectre_filtre(no_ech-0.5*no_ech+1:no_ech);
freq_pour_inversion=0:freq_step:1/periode_ech-freq_step;
signal_samples = %� compl�ter: utiliser la fonction Matlab "ifft" et diviser le r�sultat par "periode_ech"  % Inversion de Fourier

% Visualiser les �chantillons du signal reconstruit (prendre leur partie reelle "real(signal_samples)" )
figure(5)
% utiliser la fonction "scatter" pour visualiser les echantillons real(signal_samples)
hold on


%% Question 5

% plot du signal originaire
% calcul du signal interpol� avec un d�v�loppement de sinc
% plot du signal interpol�


%% Question 6

figure(6)
% Plot du signal originaire
% Plot des premiers trois termes du d�v�loppement en sinc



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Exercices 4.1.3     �chantillonage r�el d�un signal

figure(7)
plot(t_interv,peigne_portes(t_interv,periode_ech,0.1*periode_ech,fun))  % D�finir la fonction peigne_portes dans le fichier "peigne_portes.m"
hold on
plot(t_interv,fun(t_interv))



