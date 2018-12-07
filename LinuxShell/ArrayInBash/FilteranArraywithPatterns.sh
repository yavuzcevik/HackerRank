#!/usr/bin/env bash

#TASK
#You are given a list of countries, each on a new line. 
#Your task is to read them into an array and then filter out (remove) all the names containing the letter 'a' or 'A'.


declare -a fileContentArray
#Assigning values of text file to the array
while read line
do
fileContentArray=( "${fileContentArray[@]}" "$line")
done

for ((i = 0; i < ${#fileContentArray[@]}; ++i))
do
    # Interval of the variable "j" will be fixed
    for ((j = 0; j < 10; ++j))
    do
        echo -e "$j"
        if [ "${fileContentArray[$i]:$j:1}" == "a" ] || [ "${fileContentArray[$i]:$j:1}" == "A" ]
        then
        #Removing element from array
        fi
    done
done
echo "${fileContentArray[@]}"
