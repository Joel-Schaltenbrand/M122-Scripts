#!/bin/bash
# Name:         script05
# Aufruf:       script05.sh [Ordnername]
# Beschreibung: Erstellt und verschiebt Ordner mit Parametername
# Autor:        Joel Schaltenbrand
# Version:      1
# Datum:        28.04.2022

#Geht zu Ordner Testdaten
cd Testdaten

#Erstellt Unterordner mit Parametername
mkdir ${1}

#Verschiebt alles in Unterordner
mv *.* ${1}