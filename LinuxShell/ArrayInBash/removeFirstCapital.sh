#!/usr/bin/env bash
#TASK: You are given a list of countries, each on a new line. 
#Your task is to read them into an array and then transform them in the following way:
#The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). 
#Then, display the entire array with a space between each country's names.

#"Changing the First Capital Letter": the first capital letter can be at the fifth index of the word.
#So, this code won't basically change the first letter which is capital
#This code won't change all the capital letters
#If there are 5 capital letters in a 10 letter-word, this code will only change the first capital letter.

declare -a arr
declare -a print
arrLength=0
while read line
do
    arr+=( "$line")
    ((arrLength += 1))
done

for ((i=0; i < $arrLength ; i++))
do
    flag=0
    for ((j=0; j < ${#arr[$i]} ; j++))
    do       
        if [[ "${arr[$i]:$j:1}" = $( echo "${arr[$i]:$j:1}" | tr a-z A-Z ) ]]
        then
            print+=( "$( echo ${arr[$i]/${arr[$i]:$j:1}/"."} )" ) 
            flag=1
            break    
        fi         
    done
    
    if [[ $flag -eq 0 ]]
    then
        print+=( ${arr[$i]} )
    fi
done

echo ${print[@]}
