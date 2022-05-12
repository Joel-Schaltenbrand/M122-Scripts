#!/bin/bash
# Name:         script11
# Aufruf:       script11.sh Verzeichnis
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
	echo "script11.sh Verzeichnis"
else
	#Für alle Files in Parameter1
	for fname in $1/*
	do
		#Wenn Ausführrecht vorhanden
		if [ -x "$fname" ]
		then
			#Prüft ob wirklich ein File
			if [ -f "$fname" ]
				then
				#Gib Filename aus
				echo "$fname"
			fi
		fi
	done
fi