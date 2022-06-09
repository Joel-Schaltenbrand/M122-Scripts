#!/bin/bash
# Name:         a1
# Aufruf:       a1.sh
# Beschreibung: Kopiert gewünschte typen in ein File mit wunschnamen.
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        09.06.2022

#löscht alle ausgaben
clear
#Frage nach Dateiname
read -p "Wie soll die Datei heissen in welche die Einträge geschriben werden?: " filename
echo "1-INFO | 2-FATAL | 3-DEBUG | 4-WARN | 5-ERROR | 6-TRACE"
#Frage nach Typ
read -p "Welche Daten möchtest du auswählen?: " file
#wenn typ ausgewählt
case $file in
	1)
		#Kopiere alle INFO in das Wunschfile
		grep "INFO" sample.log > "$filename".txt;;
	2)
		#Kopiere alle FATAL in das Wunschfile
		grep "FATAL sample.log" > "$filename".txt;;
	3)
		#Kopiere alle DEBUG in das Wunschfile
		grep "DEBUG sample.log" > "$filename".txt;;
	4)
		#Kopiere alle WARN in das Wunschfile
		grep "WARN" sample.log > "$filename".txt;;
	5)
		#Kopiere alle ERROR in das Wunschfile
		grep "ERROR sample.log" > "$filename".txt;;
	6)
		#Kopiere alle TRACE in das Wunschfile
		grep "TRACE sample.log" > "$filename".txt;;
	*)
		#Fehlermeldung
		echo "Fehler, bitte neu versuchen"
esac