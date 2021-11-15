#!/bin/bash
#set -x

# for i in {1..10}
# do
#     (( i % 2 == 0)) && filename="F" || filename="f"
#     filename+="ile_$i"
#     # cat $filename.txt
#     alltext+=$(cat $filename.txt)
#     alltext+="\n"
# done

# echo -e $alltext | grep -ic "tyui"
# 
grep -irE --exclude="*.bash" ".( tyui)"
