#!/bin/bash
# Name:         script08
# Aufruf:       script08.sh Datei
# Beschreibung: Prüft ob angegebene Datei schreibrechte hat. JA -> löschen/Nein -> fehler
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        05.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script08.sh File"
else
	#Prüft ob Schreibrechte vorhanden sind
	if [ -w $1 ]
	then
		#Lösche File
		rm $1
	else
		#Fehlermeldung ausgeben
		echo "Schreibrechte nicht vorhanden"
	fi
fi