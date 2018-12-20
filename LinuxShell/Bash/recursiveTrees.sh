#!/usr/bin/env bash
# Base Parameters: 1-) length (Length of a branch of the tree)
#                  2-) rootCount (Total root number)(rootCount=(32/length)-1)
#                  3-) rootArrayX (Array of the X values of the roots)
#                  4-) rootArrayY (Array of the Y values of the roots)
#
declare -a recToLen=( "16" "8" "4" "2" "1" )
declare -A matrix
declare -a rootArrayX
declare -a rootArrayY
read treeCount
length=${recToLen[$(( treeCount -1 ))]}
rootCount=$(( (32 / $length) - 1))
num_rows=63
num_columns=100
iteration=1
rootNumber=1
while [ $iteration -le $treeCount ]
do
    for ((i=1;i<=$(( 2 ** (iteration - 1) ));i++)) do
    #Calculating all coordinates of roots
     rootArrayX[$rootNumber]=
     rootArrayY[$rootNumber]=
     #control echos
     #echo "iteration number $iteration"
     #echo "root number $rootNumber"
     (( rootNumber++ ))
    done
    (( iteration++ ))
    echo
done
for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
        matrix[$i,$j]="-"
    done
done

