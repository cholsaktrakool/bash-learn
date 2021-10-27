#!/bin/bash

#set -x

sep=','
words="foo,bar,baz,bee"

newwords=($(echo $words | tr "$sep" " "))
echo ${newwords[1]}
echo "============================"

# declare -a 
array1=($(echo $words | tr "$sep" " "))
for i in "${array1[@]}"
do
    echo $i
done

# IFS determines how Bash recognizes word boundaries 
# while splitting a sequence of character strings.
IFS=","
read -a array2 <<< $words
for i in "${array2[@]}"
do
    echo $i
done

read -a array3
for i in "${array3[@]}"
do
    echo $i
done
