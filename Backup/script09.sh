#!/bin/bash
# Name:         script09
# Aufruf:       script09.sh name1 name2
# Beschreibung: Falls Zieldatei nicht vorhanden, Quelle dort hin kopieren
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        05.05.2022

#Wurden 2 Parameter übergeben?
if [ $# -ne 2 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script09.sh QuellFile ZielFile"
else
	if [ -e $2 ]
	then
		mv $1 $2
	fi
fi