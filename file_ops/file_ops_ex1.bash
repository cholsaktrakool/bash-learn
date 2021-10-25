#!/bin/bash

# Is a regular file (not a directory or device file)
[ -f "number.txt" ] && echo "number.txt is a regular file!" || echo "1 3 5 7 9 11" > number.txt

[ ! -f "number2.txt" ] && echo "number2.txt is not exist!"

# Is exist file/folder
[ -e "number.txt" ] && echo "number.txt is exist!"
[ -e "tanker" ] && echo "folder tanker is exist!"

# Is a directory
[ ! -d "abc" ] && echo "dir 'abc' is not exist!"

# Is readable (Need permission)
[ -r "number.txt" ] && echo "number.txt is readable!"
[ -r "number2.txt" ] && echo "number2.txt is readable!"

# Is executable (Need permission)
[ -x "number2.txt" ] && echo "number2.txt is executable!"

# Is writable (Need permission)
[ -w "number2.txt" ] && echo "number2.txt is writable!"

# backtick is substitution of $()
echo `cat number.txt`
echo $(cat number.txt)

[[ `cat number.txt` =~ "11" ]] && echo "file number.txt contain 11" || echo "file number.txt doesn't contain 11" 

# echo `cat number.txt` | base64 -

echo "ABC" | base64 -
echo "ABCD-gq" | md5sum -
echo "ABCD-ga" | md5sum -

md5sum number2.txt
md5sum number3.txt
