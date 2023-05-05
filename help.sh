!/bin/bash

if [[ $1 == "--help" || $2 == "-h" ]]
then
  echo "Dostępne opcje:"
  echo "--date, -d - wyświetlenie dzisiejszej daty"
  echo "--logs N, -l  - utworzenie N plików logów, gdzie N to liczba całkowita"
  echo "--init   - klonuje całe repozytorium do katalogu"
  echo "-e, --error   - tworzy error pliki"
  exit 0
fi
