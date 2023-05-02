!/bin/bash

if [[ $1 == "--help" || $2 == "-h" ]]
then
  echo "Dostępne opcje:"
  echo "--logs N, -l  - utworzenie N plików logów, gdzie N to liczba całkowita"
  echo "--date, -d - wyświetlenie dzisiejszej daty"
  exit 0
fi
