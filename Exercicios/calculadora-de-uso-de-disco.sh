#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um diretório como argumento" && exit 1
[[ ! -d "$1" ]] && echo "Diretório não existe" && exit 1

declare -r limite=12467

bytes=$(du -sb "$1" | awk '{print $1}')
KB=$(( bytes / 1024 ))
MB=$(( KB / 1024 ))
GB=$(( MB / 1024 ))

echo "Quantidade de bytes: $bytes"
echo "Quantidade de KB: $KB"
echo "Quantidade de MB: $MB"
echo "Quantidade de GB: $GB"

perc_limite=$(( 80 * $limite / 100))

if (( bytes > perc_limite )); then
    echo "80% do limite: $perc_limite"
    echo "Uso ultrapassa o 80% limite definido"
else 
    echo "Uso dentro do limite"
fi