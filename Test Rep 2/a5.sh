#!/bin/bash
# Name:         a5
# Aufruf:       a5.sh
# Beschreibung: tbd
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        09.06.2022

#Gibt es Verzeichnis txt?
if [ ! -d "txt" ]
then
	#Erstelle Verzeichnis txt
	mkdir "txt"
fi
#Für jede Zeile/Land in File countries.txt
while read land
	do
		#Suche nach Land in worldcupplayerinfo.txt und gebe Ergebnisse in "Land".txt aus
		grep "$land" worldcupplayerinfo.txt > txt/"$land".txt
	done < countries.txt