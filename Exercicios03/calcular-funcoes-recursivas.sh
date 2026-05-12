#!/usr/bin/env bash

#Fatorial(n) = n * Fatorial(n - 1)
calcularFatorial() {
    local num=$1
    
    if [ "$num" -le 1 ]; then
        echo 1
    else
        local anterior=$(calcularFatorial $(( num - 1 )))
        echo $(( num * anterior ))
    fi
}

#Fib(0) = 0, Fib(1) = 1, Fib(n) = Fib(n - 1) + Fib(n - 2)
calcularFibonacci() {
    local num=$1

    if [ "$num" -le 0 ]; then
        echo 0
    elif [ "$num" -eq 1 ]; then
        echo 1
    else
        local anterior1=$(calcularFibonacci $(( num - 1 )))
        local anterior2=$(calcularFibonacci $(( num - 2 )))
        echo $(( anterior1 + anterior2 ))
    fi
}

read -p "Digite um número: " num
resultadoFat=$(calcularFatorial "$num")
echo "Fatorial de $num = $resultadoFat"
resultadoFib=$(calcularFibonacci "$num")
echo "Número de posição $num da sequência de fibonacci = $resultadoFib"
