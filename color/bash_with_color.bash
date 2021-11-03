#!/bin/bash

set_bg="${CSI}41"
set_fg="${CSI}41"

printf "$set_fg %s \n" "Hellow World"
printf "$set_bg %s \n" "Hellow World"
# 1 = RED
# 2 = GREEN
# 3 = YELLOW

echo -e "\e[31m RED \e[0m"
echo -e "\e[1;4;31m RED \e[0m"
echo -e "\e[33m YELLOW \e[0m"

echo -e "\e[1;41m RED \e[0m"
echo -e "\e[1;43m YELLOW \e[0m"

echo -e "\e[1;45m MAGENTA \e[0m"

# printf "\e[1;45m"
printf "abc def ghi" # \e[0m\n"
echo "No change"
printf "I'm back"
echo ""

printf "\e[1;41m"
echo "=================================="
echo "=================================="
echo "=========== Start Program ========"
echo "=================================="
echo "=================================="
printf "\e[0m"
