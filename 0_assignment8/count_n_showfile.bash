#!/bin/bash
set -x
read -p "Enter dir path :" entry_values

choosed_path=$PWD$entry_values

if [ ! -d $choosed_path ]; then
    echo "Directory does not exist"
    exit 0
fi

file_array=($(ls $choosed_path))

if [ ${#file_array[@]} -eq 0 ]; then
    echo "No files in this directory"
    exit 0
fi

for file_name in ${file_array[@]}
do
    row=$(wc -l $choosed_path/$file_name)
    lineNumber=($(cut -d " " -f 1 <<< $row))
    if (( $lineNumber < 100 )); then
        echo $file_name
    fi
done

