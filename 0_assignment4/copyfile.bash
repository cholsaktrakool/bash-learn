#!/bin/bash

while getopts "o:" opt
do
    case "$opt" in
        o) output_filename=$OPTARG;;
        #f) input_filename=$OPTARG;;
        *) exit 0;;
    esac
done

echo $output_filename
shift "$(($OPTIND - 1))"
echo $@

if [ -f $@ ]
then
    cat $@ >> $output_filename
else
    echo "No input file, no file is created."
fi

