#!/bin/bash
# Name:         script13
# Aufruf:       script13.sh [<1. Parameter>]
#							[<Verzeichnis>]
# Beschreibung: Alle Daten werden umbenannt mit Fileextention.
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        12.05.2022

#Wurden 1 Parameter übergeben?
if [ $# -ne 1 ]
then
	#Fehlermeldung anzeigen
	echo "Es wurde nicht die korrekte Anzahl Parameter übergeben."
	echo "Der korrekte Aufruf lautet:"
	echo "script13.sh <1. Parameter (Verzeichnis)>"
else
	#Gehe in Verzeichnis
	cd $1
	#Setze Counter auf 0
	counter="0"
	#Für jedes File in Parameter1
	for fname in *
	do
		#Setze Counter hoch
		let counter=$counter+1
		#Lese Filename heraus
		filename=$(basename "$fname")
		#Lese Fileextention aus
		extention=${filename##*.}
		#Benenne File um
		mv $fname $(printf "FILE%0*d.%s" 4 $counter $extention)
	done
fi