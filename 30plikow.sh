#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Nie podano liczy plikow."
	exit 1
fi

for i in $(seq 1 $1)
do 
	echo "Nazwa pliku: log$i.txt" >> log$i.txt
	echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
	echo "Data: $(date)" >>log$i.txt
done

