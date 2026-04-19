#!/usr/bin/env bash

[[ -f /tmp/script.lock ]] && echo "Outra instância está rodando!" exit 1

 >> /tmp/script.lock 

echo "Tarefa em execução..."

sleep 3

rm /tmp/script.lock

