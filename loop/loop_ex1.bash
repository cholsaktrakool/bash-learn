#!/bin/bash

# For loop with index
for (( ix=0; ix < 5; ix++ ))
do
    echo "LineLoop: $ix"
done

echo "================================"
# For each number array
for i in {0..5} # 0 1 2 3 4 5
do
    echo "LineLoop: $i"
done

echo "================================"
# For each charactor/string
for i in "abc" "def" "ghi"
do
    echo "LineLoop: $i"
done

echo "================================"

for i in {1..5}
do
    for i in {1..5}
    do
        printf "*"
    done
    printf "\n"
done

# ex 1
#      *
#     ***
#    *****
#   *******

# ex 2
#      *
#     ***
#    *****
#     ***
#      *
