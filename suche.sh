#!/bin/bash
# Name:         suche.sh
# Aufruf:       suche.sh PARAMETER
# Beschreibung: Gibt Parameter aus
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        28.04.2022

#Wurden 2 Parameter übergeben?
if [ $# -ne 2 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "suche.sh <1. Parameter (Verzeichnis)>"
else
	find $2 -name "$1" > /media/joel.schaltenbrand/userhome/scripts/suche.txt
fi