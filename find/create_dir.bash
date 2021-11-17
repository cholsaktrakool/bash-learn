#!/bin/bash

for i in {1..10}
do
    (( i % 2 == 0)) && dirname="D" || dirname="d"
    dirname+="ir_$i"
    mkdir $dirname
    echo "abc" > $dirname/file_$i.txt
done
