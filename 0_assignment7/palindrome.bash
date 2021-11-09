#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Need string arg"
    exit 1
fi

str=$(echo $1 | sed 's/[._ ]//g')
# var="$( echo $1 | tr -dc '[:alpha:]\n\r' )"
# echo $var
maxStrLen=${#str}
harfStrLen=${#str}/2

for (( i=0; i<harfStrLen; i++ )); do
    if [[ ${str:i:1} != ${str:maxStrLen-1-i:1} ]]; then
        echo "first: ${str:i:1}"
        echo "last: ${str:maxStrLen-1-i:1}"
        echo "It's not palindrome"
        exit 0
    # else
        # echo "first: ${str:i:1}"
        # echo "last: ${str:maxStrLen-1-i:1}"
    fi
done

echo "It's palindrome"
