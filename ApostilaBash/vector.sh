#!/usr/bin/env bash

#declare -a fruta

fruta=("banana" "laranja" "abacate" "limão" "abacaxi")

echo "Listando todas as frutas: "
echo ${fruta[*]}
echo ""

echo "Listando a fruta de indice 2: "
echo ${fruta[2]}
echo ""

echo "Listando todos os índices existentes: "
echo ${!fruta[@]}
echo ""

echo "Listando do intervalo que começa do índice 2:"
echo ${fruta[@]:2}
echo ""

echo "Listando do índice 1 até o índice 3:"
echo ${fruta[@]:1:3}
echo ""

echo "Listando o tamanho do vetor: "
echo ${#fruta[@]}
echo ""
