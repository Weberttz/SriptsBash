#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um arquvio CSV!" && exit 1

arquivo=$1
cont=0

while IFS=',' read col1 col2 col3; do
    ((cont++))
    [[ $cont -eq 1 ]] && continue
    printf '%-20s %-20s %-20s\n' "$col1" "$col2" "$col3"
done < $arquivo