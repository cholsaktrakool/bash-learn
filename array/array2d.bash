#!/bin/bash
# set -x
declare -A arr2d

arr2d[0,0]=15
arr2d[0,1]=20
arr2d[1,0]=25
arr2d[1,1]=30

# echo ${arr2d[0,0]}
# echo ${arr2d[0,1]}
# echo ${arr2d[1,0]}
# echo ${arr2d[1,1]}
# echo ${arr2d[0]}
# #arr2d[@]


# echo all indexer
for i in ${!arr2d[@]}
do
    echo $i
done
echo "========================="
# fecth all values in an array
for i in ${arr2d[@]}
do
    echo $i
done
echo "========================="
for i in $arr2d
do
    echo $i
done
echo "========================="
# fetch only first dimension
# for i in ${!arr2d[@]}
# do
#     a1=$(echo $i | tr "," " ")
#     if [ $a1[0] -eq 0 ]
#     then
#         echo ${arr2d[$i]}
#     fi
# done
echo "========================="

declare -A arr2dnext

arr2dnext[00]=10
arr2dnext[10]=15
arr2dnext[11]=20
arr2dnext[21]=25

for i in ${!arr2dnext[@]}
do
    if (( ${i:0:1} < 2 ))
    then
        echo ${arr2dnext[$i]}
    fi
done
echo "========================="
person1=( 1 "John" 45 )
person2=( 2 "Bob" 35 )
person3=( 3 "Jame" 30 )

declare -A users=( [1]=${person1[@]} [2]=${person2[@]} [3]=${person3[@]} )

for i in ${!users[@]}
do
    echo ${users[i]}
done

