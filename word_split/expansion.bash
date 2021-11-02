#!/bin/bash

# username="foo-bar-baz=bar="

# ${<string to replace>//<selected char to replace>/<replaced char>}

# echo ${username//./}

# 1 Zero Args
# 2 Args are less than 3

max3()
{
    [ $# == 0 ] && return 1
    [ $1 > $2 ] && { set -- $2 $1 $3; }

    _MAX=$3
    _MID=$2
    _MIN=$1
}

max3 5 1 3

echo "$_MAX"
echo "$_MID"
echo "$_MIN"

