#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Entre com um arquivo" && exit 1

[[ ! -f $1 ]] && echo "Arquivo não existe" && exit 1

linhas=$(wc -l $1)
palavras=$(wc -w $1)
caracteres=$(wc -c $1)

echo "Quantidade de linhas do arquivo: $linhas"
echo "Quantidade de palavras do arquivo: $palavras"
echo "Quantidade de caracteres do arquivo: $caracteres"

