#!/bin/bash
# Name:         script07
# Aufruf:       script07.sh
# Beschreibung: Verschiebt Ordner und prüft ob schon vorhanden
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        05.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script07.sh Verzeichnis"
	exit 1
else
#Geht zu Ordner Testdaten
cd Testdaten

#Prüft ob Ordner vorhanden
if [ ! -d $1 ]
then
#Erstellt Unterordner mit Parametername
mkdir ${1}
fi
#Verschiebt alles in Unterordner
mv *.* ${1}
fi