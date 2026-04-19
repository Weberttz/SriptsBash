#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Forneça um endereço ip" && exit 1

ip=$1
octeto="(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])"
regex="^($octeto\.){3}$octeto$"

if [[ $ip =~ $regex ]]; then
    echo "IP válido: $ip"
else
    echo "IP inválido: $ip"
fi
