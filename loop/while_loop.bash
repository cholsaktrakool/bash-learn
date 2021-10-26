#!/bin/bash

i=1
while (($i <= 10))
do
    echo $i
    ((i++))
done

until (($i == 1))
do
    echo $i
    ((i--))
done
