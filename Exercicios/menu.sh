#!/usr/bin/env bash

opcoes=("Exibir data e hora" "Listar usuários logados" 
"Mostrar uso de memória" "Sair")

PS3="Escolha uma opcao: "
select opcao in "${opcoes[@]}"; do
    [[ $opcao = "${opcoes[0]}" ]] && date  
    [[ $opcao = "${opcoes[1]}" ]] && who 
    [[ $opcao = "${opcoes[2]}" ]] && free -h 
    [[ $opcao = "${opcoes[3]}" ]] && break
done

# comandos=(date who "free -h")

# while true; do 
#     clear
#     echo "1. Exibir data e hora"
#     echo "2. Listar usuários logados"
#     echo "3. Mostrar uso de memória"
#     echo "4. Sair"
#     read -p "Escolha uma opção: " opt
#     [[ $opt -eq 4 ]] && break
#     ${comandos[$(( $opt -1 ))]}
#     read -p "Tecle algo para continuar..." continua
# done

