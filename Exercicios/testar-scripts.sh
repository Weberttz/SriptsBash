#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um scrpit como argumento" && exit 1

script=$1

bash -x $script