!/bin/bash

if [[ $1 == "--help" ]]
then
  echo "Dostępne opcje:"
  echo "--logs N   - utworzenie N plików logów, gdzie N to liczba całkowita"
  exit 0
fi

num_of_logs=$2

if [ -z "$num_of_logs" ]
then
  echo "Nie podano liczby plików do utworzenia"
  exit 1
fi

for i in $(seq 1 $num_of_logs)
do
  echo "Nazwa pliku: log$i.txt" >> log$i.txt
  echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
  echo "Data: $(date)" >> log$i.txt
done
