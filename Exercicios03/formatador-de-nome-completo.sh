#!/usr/bin/env bash

[[ $# -ne 2 ]] && echo "Passe o nome ($1) e sobrenome($2)" && exit 1

nome=$1
sobrenome=$2

completo="$nome $sobrenome"
declare -i quantidade=${#completo}
(( quantidade-- ))

echo "Nome completo: ${completo^}"
echo "Nome completo com letras maiúsculas: ${completo^^}"
echo "Quantidade de caracteres: $quantidade"

