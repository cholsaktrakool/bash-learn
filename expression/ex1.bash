#!/bin/bash

# printf "$1 $2 $3\n"

# -d directory
# -f file
# -h หรือ -L คือ link

test -f /bin/sh
echo $?

[ ! -d "output" ] && mkdir output

foo=50
if [ $foo -eq 50 ]
then
    echo "Foo is 50"
else
    echo "Foo is not 50"
fi

# Expression
bar=abcd
if [[ $bar =~ "zxc" ]]
then
    echo "Bar is contain abc"
fi
# else
#     echo "Bar is not contain abc "
# fi

bar=iop
if [ $bar == "abc" ] #-o $bar != "ab" ]
then
    echo "Bar is equal abc"
elif [ $bar == "abcd" ] || [ $bar == "zxc" ]
then
    echo "Bar is equal abcd "
else
    echo "Bar is not match anything."
fi

# Short if
[ $bar == "abcdj" ] && echo "There are 'abcd' in bar"

# Arithemetic Expression
bar=11
if (( $bar >= 1 && $bar <= 100 ))
then
    echo "Bar is btw 1-100 "
else
    echo "Bar is not btw 1-100 "
fi

