#!/bin/bash

show_date=false
show_logs=false
logs_count=100
show_help=false

while [[ $# -gt 0 ]]
do
	key="$1"

	case $key in
		-d|--date)
		show_date=true
		shift
		;;
		-l|--logs)
		show_logs=true
		if [[ -n $2 ]] && [[ $2  =~ ^[0-9]+$ ]]; then
			logs_counts=$2
			shift
		fi
		;;
		-h|--help)
		show_help=true
		;;
		*)
		echo "Invalid option: $1"
		exit 1
		;;
esac
	shift
done

if [[ $show_help == true ]]; then
	echo "Dostepne opcje:"
	echo "-d, --date: pokazuje dzisiejsza date"
	echo "-l, --logs: tworzy log pliki"
	echo "-h, --help: pokazuje ten message"
	exit 0
fi

if [[ $show_date == true ]]; then
	date
fi

if [[ $show_logs == true ]]; then
	for i in $(seq 1 $logs_count)
	do
		echo "logs$i.txt" > log$i.txt
		echo "Zrobione przez skrypt.sh" >> log$i.txt
		echo "$(date)" >> log$i.txt
	done
fi 

exit 0
