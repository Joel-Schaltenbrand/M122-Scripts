#!/bin/bash
# Name:         script06
# Aufruf:       script06.sh nummer nummer
# Beschreibung: Prüft auf Parameter und sortiert sie
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        05.05.2022

#Wurden 2 Parameter übergeben?
if [ $# -ne 2 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script06.sh nummer nummer"
	echo "Nummer: eine Zahl."
	exit 1
else
	#sortieren
	if [ $1 -lt $2 ]
	then
		echo "$1"
		echo "$2"
	else
		echo "$2"
		echo "$1"
	fi
fi