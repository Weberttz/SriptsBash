#!/usr/bin/env bash

declare -r nome="Empresa"
sistema=$(uname -rms)
declare -a array
array=("dev", "staging", "prod")

echo "Nome: $nome"
echo "Sistema: $sistema"
echo -n "Elementos do array: "
echo ${array[@]}

# Erro
nome='Teste'
echo "Nome: $nome"
