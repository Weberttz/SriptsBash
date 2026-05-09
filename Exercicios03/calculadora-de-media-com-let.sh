#!/usr/bin/env bash

let soma=0
let media=0
let maior=0

for n in "$@"; do
    [[ $n -gt $maior ]] && maior=$n
    (( soma+=n ))
done

let menor=$maior

for n in "$@"; do
    [[ $n -lt $menor ]] && menor=$n
done

if [ $# -ne 0 ]; then
media=$(( soma/$# ))
fi

echo "Maior número: $maior"
echo "Menor número: $menor"
echo "A média é: $media"
echo "Soma de todos os números: $soma"
