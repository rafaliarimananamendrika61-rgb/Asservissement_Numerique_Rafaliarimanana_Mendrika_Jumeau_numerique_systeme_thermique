TITRE: Jumeau numérique d'un système thermique
Auteur: _Mendrika RAFALIARIMANANA_ 
Mention : Génie Mécanique, Parcours: Mécatronique
Ecole supérieure Polytechnique d’Antsiranana


1- _BUT_: Le but principal de ce projet est de concevoir un Jumeau Numérique (Digital Twin) capable de simuler et d'optimiser le comportement thermique d'une pièce climatisée en environnement tropical.

2- _OBJECTIFS_:
	- Maintenir une température de confort humain de 22°C 
	- Prédire la consommation énergétique réelle sur un cycle de 24h à partir de données météo locales.
	- Valider une stratégie de commande numérique (PID Discret) sur un modèle physique complexe (Simscape).

3- _COMMENT LANCER LA SIMULATION_?
Pour obtenir les mêmes résultats que dans le rapport (erreur de 1% et consommation de 11691778 = 3.25 kWh), suivez ces 3 étapes :

Étape 1 : Charger les paramètres 
Avant d'ouvrir Simulink, vous devez charger les variables (Script)
	- Ouvrez le fichier Jumeau_Num.m dans MATLAB.
	- Appuyez sur le bouton Run.

Étape 2 : Ouvrir le modèle
	- Double cliquez sur le fichier Jumeau_Numerique_Room.slx.
	- Le schéma Simulink s'affiche avec tous les composants.

Étape 3 : Exécuter et Observer 
	- Cliquez sur le bouton vert Run en haut de l'interface Simulink.
	- Pour voir la courbe du température extérieure(Données enligne sur NASA) : Double-cliquez sur le bloc (scope) : Temperature_pendant_24H.
	- Pour voir la température a l'intérieure de la piece(maison)  : Double-cliquez sur le bloc(Scope): Température a l'intérieur.
	- Pour voir la consommation : Regardez la valeur affichée sur le bloc Energie total consommée à la fin des 240s.

4- _Points clés_ : 
	- Consigne de confort : Le système est réglé pour maintenir 22°C.
	- Précision : Grâce au PID Discret (Ts=0.4s), l'écart entre la consigne et la réalité est quasiment nul(1% d'erreur).
	- Isolation : Le modèle prend en compte l'épaisseur et la conductivité des murs pour un réalisme maximal.
