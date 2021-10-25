#!/bin/bash

#     *
#    ***
#   *****
#  *******
# *********

# 1. กำหนด จำนวน max ที่ฐาน
foo=9

# 2. หาจำนวน WhiteSpace ที่มากที่สุด ด้านซ้าย
bar=$(($foo/2))

# 3. สร้าง new line
for ((i=0; i < $foo/2+1; i++))
do
    # 4. หาจำนวน Star จากขวามาซ้าย
    bar_star=$(($i + 1))

    # 5. หาจำนวน Ws จากขวามาซ้าย
    bar_ws=$(($bar - $i))

    # 6. Loop White Space
    for ((a=0; a < $bar_ws; a++))
    do
        printf " "
    done
    
    # 7. Loop Star ด้านซ้าย
    for ((b=0; b < $bar_star; b++))
    do
        printf "*"
    done

    # 8. Loop Star ด้านขวา
    for ((b=0; b < $i; b++))
    do
        printf "*"
    done
    printf "\n"
done
