#!/bin/bash
# Name:         a3
# Aufruf:       a3.sh
# Beschreibung: Kopiert alle Errormeldungen und macht ein Backup von all.log
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        09.06.2022

#Setze Date von jetzt
name=$(date +%Y%m%d-%H%M%S)_all.log
#Kopiere alle Error ins error.log
grep "error" all.log >> error.log
#Gibt es Verzeichnis Archiv?
if [ ! -d "Archiv" ]
then
	#Erstelle Verzeichnis Archiv
	mkdir "Archiv"
fi
#Kopiere all.log mit Datum im Namen
cp all.log Archiv/"$name"