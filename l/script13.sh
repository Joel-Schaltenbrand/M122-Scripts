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
	echo "script12.sh Verzeichnis"
else
	var counter=0
	for fname in /l/
	do
		let counter=$counter+1
		mv $fname "FILE$counter"
	done
fi