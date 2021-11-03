#!/bin/bash

# username="foo-bar-baz=bar="

# ${<string to replace>//<selected char to replace>/<replaced char>}

# echo ${username//./}

# 1 Zero Args
# 2 Args are less than 3

# set -x

# usemax=10

max3()
{ 
    if [[ $4 =~ ^[0-9] ]] || [[ $4 =~ [^A-Za-z_0-9] ]]; 
    then 
        echo "Invalid variable name." 
        return 1
    fi

    declare -n _ref=${4:-_MAX3}

    (( $# < 3 )) && return 4
    (( $1 > $2 )) && set -- "$2" "$1" "$3"
    (( $2 > $3 )) && set -- "$1" "$3" "$2"
    (( $1 > $2 )) && set -- "$2" "$1" "$3"
    _ref=( "$3" "$2" "$1" )
    # echo "${_MAX3[@]}"
    # echo "${(echo $4)[@]}"
}

# max3 2 5 8 re+sults
# max3 2 5 8 re^sults
# max3 2 5 8 res^ults
# max3 2 5 8 8results
# max3 2 5 8 results
# max3 2 5 8 rerfd
# max3 2 5 8
# max3 2 5 8 results
