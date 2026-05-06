#!/usr/bin/env bash

# 1. Variável não definida: ${var:-'padrao'}
# Retorna o valor padrão, mas NÃO altera a variável original.
unset var
echo "1. Não definida: ${var:-'padrao'}"
echo "   Status: var continua vazia/nula -> '$var'"

echo "--------------------------------------"

# 2. Variável vazia: ${var:='novo'}
# Retorna o novo valor e ATRIBUI esse valor à variável.
unset var
echo "2. Vazia: ${var:='novo'}"
echo "   Status: var agora contém -> '$var'"

echo "--------------------------------------"

# 3. Variável definida: ${var:+'existe'}
# Se a variável tem valor, retorna algo diferente (substituição temporária).
var="Estou preenchida"
echo "3. Definida: ${var:+'existe'}"
echo "   Status: var original permanece intacta -> '$var'"
