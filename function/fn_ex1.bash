#!/bin/bash

function foo()
{
    printf "hello foo\n myname: %s, 
    lastname: %s \n" "$1" "$2"
}

foo "abc" "def"

echo "=================================="
function sum()
{
    local sumResult=$(($1+$2))
    echo "Value in fn sum: $sumResult"
    # return 
}

sum 2 3
echo "Value outside fn sum: $sumResult"
echo "=================================="
function multiply()
{
    return $(( $1 * $2 ))
}

multiply 3 3
echo "$?"

echo "=================================="

multiply 3 5
mutiplyResult="$?"
echo $mutiplyResult
