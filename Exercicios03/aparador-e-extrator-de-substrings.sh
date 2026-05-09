#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe uma URL como parametro" && exit 1

url=$1

echo "Aparador e Extrator de Substring"

protocolo=${url%%://*}

echo "Protocolo da URL: $protocolo"

sem_protocolo=${url#*://}

echo "URL sem protocolo: $sem_protocolo"