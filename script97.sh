#!/bin/bash
# Name:         backupscript
# Aufruf:       backupscript.sh
# Beschreibung: Erstellt eine Backup ZIP des Verzeichnis
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        28.04.2022

#Variable von Datum
fname=$(date +%Y%m%d_%H%M%S)

#Ins obere Verzeichnis
cd ..

#Erstelle ZIP mit Variablenname
zip -r $fname scripts-122