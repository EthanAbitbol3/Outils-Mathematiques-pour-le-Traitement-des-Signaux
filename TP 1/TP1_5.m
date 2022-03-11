
%% Exercice 1.5   Calcul d'une s�rie num�rique
clear all;

% Calculer le resultat d'une s�rie num�rique: la s�rie g�ometrique
R = 0:0.1:1;

% On somme les premiers N termes
N=1000;
for m=1:10
    somme_partielle = 0;
    r=R(m);
    for n=1:N
       %new_term = % a �crire
       somme_partielle = somme_partielle + (r^n);% a �crire
    end
    resultat=somme_partielle  % On visualise le resultat de la s�rie avec N termes
    limite=r/(1-r)         % On visualise la resultat limite de la s�rie
end

% On s'arrete lorsque l'erreur relative est inf�rieure � accuracy
r=0.8;
accuracy = 1e-6;
err_abs(1) = 1;
n=1;
count=0;
somme_partielle = 0;

while count < 10
  new_term = r^n; % a �crire
  somme_partielle = somme_partielle + new_term; % a �crire
  err_absolute(n) = abs(new_term); % � �crire
  if(err_absolute(n)<= accuracy*abs(somme_partielle))
      count=count+1;
  else
      count = 0;
  end
  n=n+1;
end

resultat=somme_partielle;
erreur_relatif=err_absolute./abs(resultat);

figure(1)
plot(erreur_relatif);% erreur vs. nombre de termes
title('erreur relative en lin�aire');
grid on
grid minor

figure(2)
semilogy(erreur_relatif); % erreur vs. nombre de termes en echelle logarithmique (verticale)
title('erreur relative en semilog sur y');
grid on
grid minor

figure(3)
loglog(erreur_relatif);
title('erreur relative en log log');
grid on
grid minor