#!/bin/bash

# To run this script, you need to install bc package.
# apt-get update
# apt-get install bc -y
# how to use bc cmd to calculate

echo "11/2" | bc

echo "scale=2; 11/2" | bc

echo "scale=10; 11/2" | bc

echo "scale=10; 11/2" | bc

echo "scale=2; 2^10" | bc

echo "scale=2; sqrt(64)" | bc

bc <<< "scale=2; sqrt(64)"

bc <<< "scale=2; 11/2*10+7"
