%% Exercice 1.4 Calcul d'énergies et puissances
clear all;

% Calculer l'energie d'un sinus, d'une exponentielle monolaterale, d'une Gaussienne, d'un sinc

%fun4 = @(t) abs(sin(t)).^2;
fun4 = @(t) (1-cos(2.*t))./2;
fun5 = @(t) abs(exp(-5.*t)).^2;
fun6 = @(t) abs(exp(-((t.^2)./2))).^2;
fun7 = @(t) abs(exp(1i.*t)).^2; %<==> fun7 = @(t) (cos(t)^2)+(sin(t)^2);
fun8 = @(t) abs(sin(t)./t).^2;

energie_sin              = (1/(2*pi)).*integral(fun4,-pi,pi) 
energie_a_analytique     = 1/2

energie_expm             = integral(fun5,0,inf)
energie_expm_analytique  = 1/10

energie_gauss            = integral(fun6,-inf,inf) 
energie_gauss_analytique = sqrt(pi)

energie_expc             = integral(fun7,0,pi)
energie_expc_analytique  = pi

energie_sinc             = integral(fun8,0,inf)
energie_sinc_analytique  = pi/2

% Calculer la puissance d'une constante et d'une fonction "creneaux périodiques"

fun9 = @(t) (10*t./t).^2;           % t./t sert à obtenir un array de la meme taille que t
puissance_const = integral(fun9,-5,5)/10
puissance_const_analytique =100

t=2;
fun = @(t) porte(t./t,-1/4,1/4);           % t./t sert à obtenir un array de la meme taille que t
puissance_creneau = integral(fun,-3/4,3/4)
puissance_creneau_analytique =