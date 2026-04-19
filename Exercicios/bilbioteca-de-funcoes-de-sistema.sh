#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe uma string como paramêtro!" exit 1

caminho="./ExemplosLogs/sistema.log"

exibir_cabecalho() {
    clear
    echo "Script de Funções"
}

verificar_root() {
    [[ $EUID -eq 0 ]] && return 0 || return 1
}

log_mensagem() {
    echo "$( date ) $1" >> $caminho
    [[ -n $1 ]] && return 0 || return 1
}

exibir_cabecalho

verificar_root
if [[ $? -eq 0 ]]; then
    echo "Executando como usuário root. (ID = $?)" 
else
    echo "Executando como usuário normal. (ID = $?)"
fi


log_mensagem $1
echo "Data e String enviada para o log "