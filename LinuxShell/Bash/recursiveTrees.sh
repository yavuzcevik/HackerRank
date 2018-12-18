#!/usr/bin/env bash
# Base Parameters: 1-) length (Length of a branch of the tree)
#                  2-) rootCount (Total root number)(rootCount=(32/length)-1)
#                  3-) rootArrayX (Array of the X values of the roots)
#                  4-) rootArrayY (Array of the Y values of the roots)
#

read treeCount
declare -A matrix
declare -a rootArrayX
declare -a rootArrayY
num_rows=63
num_columns=100


for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
        matrix[$i,$j]="-"
    done
done
