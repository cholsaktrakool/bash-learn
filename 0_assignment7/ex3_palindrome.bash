#!/bin/bash

is_palindrome () 
{
# set -x
# set "${1// /}" 
# set "${1//[[:punct:]]/}" 
ori=$1
word=${1//[[:punct:][:blank:]]/}
i=0
len=${#word}
mid=$(($len/2))

while [ $i -lt $mid ]
do
    if [ "${word:$i:1}" != "${word: -$(($i+1)):1}" ]
      then
      echo "$1 is NOT a palindrome"
      return 1
    fi
    ((i++))
done
echo "$ori is a palindrome"
}
