#!/usr/bin/env bash

#TASK
#There are a number of plants in a garden. Each of these plants has been treated with some amount of pesticide. 
#After each day, if any plant has more pesticide than the plant on its left, being weaker than the left one, it dies.
#You are given the initial values of the pesticide in each of the plants. 
#Print the number of days after which no plant dies, i.e. the time after which there are no plants with more pesticide content than the plant to their left.

#INPUT FORMAT
#The first line contains an integer n, the size of the array p. 
#The next line contains n space-separated integers p[i].

#CONSTRAINTS
#1<=n<=10^5
#0<=p[i]<=10^9


read -r elementCount
read -r -a array
flag=0
flagCount=$((elementCount - 1))
day=0
 while [ 1 ]
 do
    if [ ${array[@]:$((elementCount - 1)):1} -gt ${array[@]:$((elementCount - 2)):1} ]
    then   
        array=( "${array[@]:0:$((elementCount - 1))}" "${array[@]:$elementCount}" )
        (( flagCount--))
        (( flag++ ))
    fi
    (( elementCount-- ))
    if [ $elementCount -eq 1 ]
    then
        if [ $flag -eq 0 ]
        then
            break
        else
            elementCount=$((flagCount + 1))
            flag=0
            ((day++))
        fi
    fi
    
 done
 echo "$day"
