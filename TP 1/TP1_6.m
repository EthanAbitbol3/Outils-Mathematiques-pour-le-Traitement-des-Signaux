%% Exercice 1.6   Bonus: Produits scalaires
clear all;

% Calculer le produit scalaire entre un sin et un cos en une période, et de deux Gaussiennes

fun = @(t) sin(t).*cos(t); 
scalaire_sincos = integral(fun,0,2*pi)
scalaire_sincos_analytique = 0

%sigma1 = 2
%sigma2 = 4
%fun = @(t) exp(-(t/(2*(sigma1)^2))-(t/(2*(sigma2)^2))); 
%scalaire = integral(fun,-inf,inf)
%scalaire_analytique = 