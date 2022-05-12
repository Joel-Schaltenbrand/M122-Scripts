#!/bin/bash
# Name:         script13
# Aufruf:       script13.sh Verzeichnis
# Beschreibung: Alle Daten werden umbenannt.
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        05.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script13.sh Verzeichnis"
else
	#Setze Counter auf 0
	counter="0"
	#Für jedes File in Parameter1
	for fname in $1/*
	do
		#Setze Counter hoch
		let counter=$counter+1
		#Benenne File um
		mv $fname "$1/FILE000$counter"
	done
fi