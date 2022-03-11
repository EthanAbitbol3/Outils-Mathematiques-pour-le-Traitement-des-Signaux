%% Exercice 2.4        Convergence simple
clear all;
close all;
N_harmonics = 100;
n_harm = -N_harmonics:1:N_harmonics;
%c_n = (-1i)./(2*pi.*n_harm);


% Code pour le calcul de la valeur de la somme partielle en t_point avec N_harmonics harmoniques
t_point=1.41
somme_partielle = 0;
for n=1:N_harmonics
  new_term = (1/(pi*n))*sin(n*2*pi*t_point);% à écrire
  somme_partielle = somme_partielle + new_term;% à écrire
  n=n+1;
end
somme_partielle    % Pour afficher la valeur de la serie de Fourier en t=t_point
f0 = 0.5-t_point   % Pour afficher la valeur de la fonction en t=t_point

 
accuracy = 1e-6;    % Convergence lente: évitez accuracy < 1e-6
err_relative = 1;
count = 0;
n=1;
somme_partielle = 0;
while count < 10
  new_term = (1/(pi*n))*sin(n*2*pi*t_point);% à écrire
  somme_partielle = somme_partielle + new_term;% à écrire
  err_absolute(n)=abs(new_term);
  if(err_absolute(n)< accuracy*somme_partielle)
      count=count+1;
  else
      count = 0;
  end
  n=n+1;
end
somme_partielle
err_relative=err_absolute./somme_partielle;

figure(4)
semilogx(err_relative);% plot des erreurs err_relative(n)=err_absolute(n)/somme_partielle  (seulement si somme_partielle n'est paz zéro...)
grid on
grid minor
