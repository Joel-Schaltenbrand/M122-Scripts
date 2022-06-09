#!/bin/bash
# Name:         a2
# Aufruf:       a2.sh
# Beschreibung: Zähle Zeilen und gebe sie mit Filename aus
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        09.06.2022

#Setzte Counter auf 0
counter=0

#Für jedes File im Verzeichnis
for fname in *
do
	#setze Counter auf 0
	let counter=0
	#Für jede Zeile in File
	while read zeile
	do
		#Zähle +1 bei Counter
		let counter=counter+1k
			#Lese aus File
	done < "$fname"
	echo $fname mit $counter Zeilen
done