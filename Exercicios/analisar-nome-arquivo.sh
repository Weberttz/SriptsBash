#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe apenas um argumento" && exit 1

caminho=$1
base=${caminho##*/}
extensao=${caminho##*.}
diretorio=${caminho%/*}

echo "Nome base: $base"
echo "Extensão: $extensao"
echo "Diretório pai: $diretorio"

