#!/bin/bash
# set -x
running=true
while $running
do
    read -ep "Enter Species, #chromo, #ploify: " entry_values
    if [ $entry_values == "q" ]; then
        running=false
    else
        specy=$(echo $entry_values | cut -d "," -f 1)
        chromo=$(echo $entry_values | cut -d "," -f 2)
        ploify=$(echo $entry_values | cut -d "," -f 3)
        if [ $specy == "" ] || ! [[ $specy =~ ^[A-Za-z] ]]; then
            echo "Species not entered"
            continue;
        fi
        spcies_arr+=($entry_values)
    fi
done

printf "Species: %s\n" "${spcies_arr[@]}"
