#!/bin/bash
# Name:         script10
# Aufruf:       script10.sh name
# Beschreibung: Einige tests mit einem Namen machen
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        05.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script10.sh Name"
else
	#Prüft ob Verzeichnis mit dem Namen vorhanden
	if [ -d $1 ]
	then
		#Gibt Meldung das vorhanden
		echo "Es gibt ein Verzeichnis mit dem Namen $1"
	else
		#Prüft ob Datei mit dem Namen vorhanden
		if [ -e $1 ]
		then
		#Prüft Rechte
		if [ -r $1 ]
		then
			echo "Die Datei $1 hat Leserechte"
		fi
		if [ -w $1 ]
		then
			echo "Die Datei $1 hat Schreibrechte"
		fi
		if [ -x $1 ]
		then
			echo "Die Datei $1 hat Ausführrechte"
		fi
	else
		#Gibt aus dass nichts vorhanden ist
		echo "Es gibt nichts mit diesem Namen."
	fi
	fi

fi