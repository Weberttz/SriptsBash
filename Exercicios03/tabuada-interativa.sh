#!/usr/bin/env bash

read -p "Digite um número: " numero

for i in {1..10}; do
    printf '%2d x %2d = %3d\n' "$numero" "$i" "$(( numero * i))"
done