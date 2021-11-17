#!/bin/bash

# Replace all occurrences of the pattern in the file.
# sed -i 's/^[^ ]//;s/(00)//g' test_text.txt

# OIFS=IFS
# IFS='/'
# input=$(cat test_text.txt)
# outp=$(echo $input | sed 's/^[^ ]//g;s///')
# echo $outp
# IFS=OIFS # Restore IFS

# s/^[^ ]//;
#sed -r 's/^[^ ]//;s/(00)//g' test_text.txt > output.txt

# sed 's/^[^ ]*[]*//;s/[].*//' test_text.txt > output.txt

perl -pe 's/(00)(?=3)//g' test_text.txt > output.txt
