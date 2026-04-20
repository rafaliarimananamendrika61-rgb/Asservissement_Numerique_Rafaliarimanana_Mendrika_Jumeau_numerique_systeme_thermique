%% Script d'initialisation - Jumeau numerique d'un système thermique
% Ce script définit les paramètres pour le modèle Simulink
clear; clc;

%% 1. Temps et echelle
t_sim = 240;          % Durée de la simulation (secondes)
% Correspond à 24h réelles (86400s)
echelle_temps = 360;  % 86400 / 240

%% 2. Consigne et Constantes
consigne_temp = 22;   % Valeur du bloc Constant (entrée)
K_kelvin = 273.15;    % Valeur utilisée dans les blocs Constant (sommateurs)

%% 3. Paramètres du Contrôleur PID(z)à l'aide du PID tuning tool
Ts = 0.4;                 % Sample time
% Valeurs pour stabiliser la courbe à 30°C
Kp = 348993.126132024;    % Valeur P          
Ki = 13431.640947805;     % Valeur I    
Kd = 372688.285404143;    % Valeur D

%% 4. Paramètres Physiques (Simscape)
% Masse thermique (Thermal Mass)
Sp_heat = 166*(60000 / echelle_temps);  % Specific heat 
m = 60;                                 % Masse thermique
% Note : Divisée par l'échelle pour garder la dynamique réelle

A = 20;                                 % Surface du mur
h = 0.2;                                % Epaisseur du mur
conductivite_mur = 1.43;                % Conductivité thermique 

%% 5. Calculs pour l'affichage
Pourcentage_erreur = 1/consigne_temp; % Pour ton bloc Gain 1/30

disp('Les variables ont été chargées avec succès !');