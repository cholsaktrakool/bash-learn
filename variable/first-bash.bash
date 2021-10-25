#!/usr/local/bin/bash

# printf "Hello World\n"

foo='Im bar'

printf "Hello %s\n" "$foo"

bar=11.1555f
printf "The number is %f\n" "$bar"

bas=$(cat readme.txt)
printf "The number is %s\n" "$bas"

printf "The numbers are %d\n" $super


# bar=2
# printf "The number is %d\n" ${bar}

