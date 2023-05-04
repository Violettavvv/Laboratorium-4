#!/bin/bash

if [[ $1 == "--error" || $2 == "-e" || $1 == "-e" && -n "$2" ]]; then 
	if [[ $1 == "--error" || $1 == "-e" ]]; then
		shift
	fi

	if [[ $1 =~ ^([1-9]|[1-9][0-9]?)$ ]]; then
		for (( i=1; i<=$1; i++ )); do
			touch error$i.txt
		done
	else
		echo "Nie podano liczby plikow.Tworza sie 100 plikow."
		for i in {1..100}; do
			touch error$i.txt
		done
	fi
fi
