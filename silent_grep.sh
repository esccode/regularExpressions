#!/bin/bash
#nazwa pliku: silent_grep.sh
#opis: sprawdzanie. czy plik zawiera tekst, czy nie
# ./silent_grep szukany_text plik_przeszukiwany
if [  $# -ne 2 ]; then
    echo "$0 match_text and filename"
fi
match_text=$1
filename=$2
grep -q $match_text $filename
if [ $? -eq 0 ]; then
echo "Tekst istnieje w pliku"
else
echo "Tekst nie istnieje w pliku"
fi

