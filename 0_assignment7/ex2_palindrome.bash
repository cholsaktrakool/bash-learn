#!/bin/bash
echo "hello"
echo $1
var="$( echo $1 | tr -dc '[:alpha:]\n\r' )"
ori=$var
echo ${var}

# _REVSTR=
while [ -n "$var" ]
do
    temp=${var#?}
    _REVSTR=${var%"$temp"}${_REVSTR}
    var=$temp
done

echo ${var}
echo "21 ${_REVSTR}"

if [[ ${ori} == ${_REVSTR} ]]
then
    echo "$1 is a palindrome"
else
    echo "$1 is NOT a palindrome"
fi
