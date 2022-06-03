#!/bin/bash
count=0
while read line
do
    let count=$count+1
done <desktop.txt

echo Anzahl Zeilen: $count

A3-count.sh
"A3-count.sh" wird angezeigt.