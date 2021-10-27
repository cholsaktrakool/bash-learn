#!/bin/bash
# rm -r result
[ ! -d "./output" ] && mkdir output #echo "dir output is not exist."

# ls1=$(cat sample1.fastq | wc -l)

# printf "sample1.fastq %d\n" $ls1 >> result/linecount.txt

# ls2=$(cat sample2.fastq | wc -l)

# printf "sample2.fastq %d\n" $ls2 >> result/linecount.txt

# ls3=$(cat sample3.fastq | wc -l)

# printf "sample3.fastq %d\n" $ls3 >> result/linecount.txt

# printf "Total %d" $(($ls1+$ls2+$ls3)) >> result/linecount.txt

# printf "%s\n" "$(cat sample1.fastq | awk 'NR == 3 || NR == 4 {print $0}')" > sample1_r34.fastq
# printf "%s\n" "$(cat sample2.fastq | awk 'NR == 3 || NR == 4 {print $0}')" > sample2_r34.fastq
# printf "%s\n" "$(cat sample3.fastq | awk 'NR == 3 || NR == 4 {print $0}')" > sample3_r34.fastq

# printf "%s" "$(cat sample3.fastq | awk 'NR == 3 || NR == 4 {print $0}')"

array1=(15 20 25 30 35)
array2=("abc" "def" "ghi" "jkl" "nop")
printf "%s\n" ${array1[1]}
