#!/bin/bash

for i in {1..10}
do
    (( i % 2 == 0)) && filename="F" || filename="f"
    filename+="ile_$i"
    echo "abc" > ${filename}.txt
done
