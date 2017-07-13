#!/usr/bin/env bash
#Petit script pour juste faire un petit serveur web en Python en seulement une ligne commande
#zf170711.1849

echo -e " 

Afin de garder le petit serveur WEB permanent, il serait bien de le faire tourner dans un 'screen' avec:
screen -S aspi        pour entrer dans screen
./web_server.sh       pour lancer le serveur WEB dans screen
CTRL+a,d              pour sortir de screen en laissant tourner le serveur
screen -r aspi        pour revenir dans screen
CTRL+d                pour terminer screen
screen -list          pour lister tous les screen en fonctionement
"


python3 -m http.server 8081 --cgi

