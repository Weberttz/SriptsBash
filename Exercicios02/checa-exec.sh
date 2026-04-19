#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Digite o nome de apenas um arquivo! Saindo...." && exit 1

[[ -x $1 ]] && echo "O arquivo '$1' é executável" && exit 1

echo "O arquivo '$1' NÃO é executável" && exit 1 
