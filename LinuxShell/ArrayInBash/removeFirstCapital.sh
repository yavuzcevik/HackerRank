#!/usr/bin/env bash
#TASK: You are given a list of countries, each on a new line. 
#Your task is to read them into an array and then transform them in the following way:
#The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). 
#Then, display the entire array with a space between each country's names.

#"First Capital Letter" means that the first capital letter can be at the fifth index of the word.
declare -a arr
arrLength=0
while read line
do
    arr+=( "$line")
    ((arrLength += 1))
done

for ((i=0; i < $arrLength ; i++))
do
    for ((j=0; j < ${#arr[$i]} ; j++))
    do       
        if [[ "${arr[$i]:$j:1}" = "$( echo "${arr[$i]:$j:1}" | tr a-z A-Z )" ]]
        then
            #if [[ $j -ne 0 ]]
            #then
            #    arr[$i]=( ${arr[$i]:0:$j} ${arr[$i]:$(($j + 1))} )
            #else
            #    arr[$i]=( . ${arr[$i]:$(($j + 1)):${#arr[$i]}} )
            #fi
            break 
        fi
    done
done

echo "${arr[@]}"
