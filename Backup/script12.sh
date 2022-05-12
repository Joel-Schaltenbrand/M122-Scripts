#!/bin/bash
# Name:         script12
# Aufruf:       script12.sh Verzeichnis
# Beschreibung: Alle Daten werden umbenannt.
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        12.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script12.sh Verzeichnis"
else
	#Setze Counter auf 0
	counter="0"
	#Geht jeden Ordner durch
	for fname in $1/*
	do
		#Prüft ob wirklich ein Ordner
		if [ -d "$fname" ]
		then
		#Zählt Ordner
		let counter=$counter+1
		fi
	done
	#Gibt anzahl Ordner aus.
	echo "$counter Ordner"
fi