#!/bin/bash
# Name:         script99
# Aufruf:       script99.sh [<1. Parameter>]
#							[<Dateiname>]
# Beschreibung: Kann eine Datei löschen, Schreibrecht, Ausführrecht geben oder sie umbenennen.
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        19.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script99.sh <1. Parameter (Datei)>"
else
	#Fahre mit Script fort.
	# Annahme: in $1 steht ein Dateiname
	echo "Was möchten Sie machen?"
	echo "1 - Datei löschen"
	echo "2 - Schreibrecht setzen"
	echo "3 - Ausführungsrecht setzen"
	echo "4 - Datei umbennen"
	read -p "Ihre Wahl: " selection
	case $selection in
		1)
			rm $1;;
		2)
			chmod u+w $1;;
		3)
			chmod u+x $1;;
		4)
			read -p "Wie soll die Datei genennt werden: " rename
			mv $1 $rename;;
		*)
			echo "Ungültige Wahl!"
	esac
fi