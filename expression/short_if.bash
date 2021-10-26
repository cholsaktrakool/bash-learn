#!/bin/bash

# =========== int =================

i=10
y=$(( i == 10 ? 11 : 12 ))
echo $y

# =========== string ==============
# This's work
[[ "abc" == "abc" ]] && echo "true" || echo "false"

if [[ "abc" -ne "abc" ]]; then echo "true"; else echo "false"; fi

# =================================
# Not work
let a="gdfg"
echo $a
