#!/bin/bash
# Name:         script14
# Aufruf:       script14.sh [<1. Parameter>]
#							[<Verzeichnis>]
# Beschreibung: Kann eine Liste Dateien in einem Verzeichis
#				löschen, kopieren, oder nichts machen.
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        19.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script14.sh <1. Parameter (Verzeichnis)>"
else
	#Fahre mit Script fort.
	cd $1
		
	for fname in *
	do
		clear
		echo "Die aktuelle Datei ist: $fname"
		echo ""
		echo "1 - Datei löschen"
		echo "2 - Datei kopieren"
		echo "3 - keine Aktion"
		read -p "Bitte wähle eine Auswahl: " selc
		case $selc in
			1)
				rm $fname;;
			2)
				cp $fname "$fname""_copy";;
			3)
				clear
				echo "Es wurde nichts gemacht."
				sleep 1.5;;
			*)
				clear
				echo "Falsche Auswahl!"
				sleep 1.5
		esac
	done
	clear
fi