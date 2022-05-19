#!/bin/bash
# Name:         script15
# Aufruf:       script15.sh [<1. Parameter>]
#							[<Verzeichnis>]
# Beschreibung: Kann eine Liste Dateien in einem Verzeichis löschen 
#				(mit Bestätigung), kopieren (mit Namen eingeben), 
#				oder nichts machen. 
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
	#Frage Passwort ab
	echo "Gebe das Passwort ein: "
	read -s pw
	case $pw in
		[a-z][A-Z][a-z][A-Z])
		#Fahre mit Script fort.
		#Gehe in Parameter-Verzeichnis
		cd $1
		#Gehe jede Datei im Verzeichnis durch
		for fname in *
		do
			#Zeige Auswahlmöglichkeiten
			clear
			echo "Die aktuelle Datei ist: $fname"
			echo ""
			echo "1 - Datei löschen"
			echo "2 - Datei kopieren"
			echo "3 - keine Aktion"
			echo ""
			#Speichere Auswahlmöglichkeiten in Variable selc
			read -p "Bitte wähle eine Auswahl: " selc
			case $selc in
				1)
					#Frage ob Datei wirklich gelöscht werden soll
					echo ""
					echo ""
					read -p "Bist du dir sicher, dass du die Datei löschen willst? (J/Y - Ja / N - Nein) " ask
					case $ask in
						y|Y|J|j)
							#Lösche aktuelle Datei
							rm $fname
							#Gebe Bestätigung aus
							echo ""
							echo ""
							echo "Datei wurde gelöscht"
							#Warte 1.5 Sekunden
							sleep 2;;
						*)
							#Gebe Bestätigung aus
							echo ""
							echo ""
							echo "Datei wurde NICHT gelöscht"
							#Warte 1.5 Sekunden
							sleep 2;;
					esac;;
				2)
					echo ""
					echo ""
					#Fragt wie die neue Datei heissen soll.
					read -p "Wie soll die neue Datei heissen: " newname
					#Kopiere die aktuelle Datei mit _copy am Schluss.
					cp $fname "$newname"
					#Gebe Bestätigung aus
					echo ""
					echo ""
					echo "Datei wurde mit dem Namen $newname kopiert."
					#Warte 1.5 Sekunden
					sleep 2;;
				3)
					#Lösche Konsole
					clear
					#Gebe Bestätigung aus
					echo "Es wurde nichts gemacht."
					#Warte 1.5 Sekunden
					sleep 1;;
				*)
					#Lösche Konsole
					clear
					#Gebe Bestätigung aus
					echo "Falsche Auswahl!"
					#Warte 1.5 Sekunden
					sleep 1
			esac
		done
		#Lösche Konsole
		clear;;
	*)
		#Gib Fehlermeldung aus.
		echo "Das Passwort ist falsch"
	esac
fi