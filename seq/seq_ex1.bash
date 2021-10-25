#!/bin/bash

df=(1 13)

for i in {1..10}
do
    echo "loop: $i"
done

echo ${df[*]}

seq -s ";" 1 2 50

echo "===================="

for i in {1..10}
do
    echo $(shuf -i 1-100 -n 1)
done
