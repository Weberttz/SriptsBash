#!/usr/bin/env bash

[[ $# -ne 2 ]] && echo "Passe dois argumentos!" && exit 1

categoria=$1
acao=$2

case ${categoria,,} in
    (arquivo) 
            case ${acao,,} in
                (ler) echo "Abriu e leu o arquivo";;
                (escrever) echo "Abriu para escrever no arquivo";;
                (copiar) echo "Copiou o arquivo";;
                (*) echo "Ação inválida";;
            esac;;
    (sistema) 
            case ${acao,,} in
                (verificar) echo "Verificou o sistema";;
                (utilizar) echo "Agora pode utilizar o sistema";;
                (desligar) echo "Desligou o sistena";;
                (*) echo "Ação inválida";;
            esac;;
    (rede)
            case ${acao,,} in
                (scannear) echo "Scaneou a rede";;
                (corrigir) echo "Corrigiu tráfego da rede";;
                (desligar) echo "Desligou a rede";;
            esac;;
    (*) echo "Ação inválida" exit 1;;
esac