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
#We suppose that numbers of rows and columns are static
num_rows=63
rootY=$num_rows
num_columns=100
rootX=$((num_columns / 2))
iteration=1
rootNumber=1
while [ $iteration -le $treeCount ]
do
    for ((i=1;i<=$(( 2 ** (iteration - 1) ));i++)) do
    #Calculating all coordinates of roots
     rootArrayX[$rootNumber]=
     rootArrayY[$rootNumber]=$rootY
     (( rootNumber++ ))
    done
    #Changes on the values of (X,Y) pairs
    rootY=$(( rootY - (2 * (recToLen[$(( iteration - 1))])) ))
    (( iteration++ ))
    echo
done
for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
        matrix[$i,$j]="-"
    done
done

