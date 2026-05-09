#!/usr/bin/env bash

validar_numero(){
    [[ $num =~ [0-9]+$ ]] && return 0 || return 1 
}

while read -p "Digite um número: " num; do 
    validar_numero 
    [[ $? -eq 0 ]] && echo "Status: $?" && break
    echo "Status: $?"
done
 