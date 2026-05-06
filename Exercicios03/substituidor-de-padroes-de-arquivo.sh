#!/usr/bin/env bash

[[ $# -ne 3 ]] && echo "Uso: script arquivo palavra_busca palavra_substituta" && exit 1

arquivo=$1
palavra_busca=$2
palavra_substituta=$3

while read -r linha; do
    echo ${linha//$palavra_busca/$palavra_substituta}
done < "$arquivo" > "$arquivo""_modificado"

echo "modificações salvas em ${arquivo}""_modificado"