#!/bin/bash

function plot() {
  gnuplot -e "plot '$1' using 1:2 title 'server' with lines lc rgb 'blue',\
    '$1' using 1:3 title 'client' with lines lc rgb 'orange';\
    pause -1 \"Hit any key to continue\""
}

MESMA_MAQUINA=./tabela_mesma_maquina.plt
DIFERENTES_MAQUINAS=./tabela_diferentes_maquinas.plt

# plot $MESMA_MAQUINA
# plot $DIFERENTES_MAQUINAS
plot $1
