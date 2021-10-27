#!/bin/bash

# 1. Create Regex pattern
regex="^[0-9]+$"

# 2. Validate 3 param is exist
if [[ $# != 3  ]]
then
    echo "Need three arguments: number of sequence, sequence length and output file name"
    exit 1
fi

# Early exit technquie
if ! [[ $1 =~ $regex ]]
then
    echo "First parameter must be numeric"
    exit 1
fi

if ! [[ $2 =~ $regex ]]
then
    echo "Second parameter must be numeric"
    exit 1
fi


# Check File is exist
if [ -f "$3" ]
then
    printf "File \'$3\' already exists\n"
    exit 1
fi

for ((i=1; i <= 5; i++))
do
    echo "Read$i"
    read read_capture
    foo+="$read_capture\n"
done

printf $foo > "$3"
