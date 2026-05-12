#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um tempo em segundos" && exit 1

contador=$1

until [[ $contador -eq 0 ]]; do
    echo $contador
    spd-say $contador
    sleep 1
    (( contador-- ))
done

spd-say "Concluído"

