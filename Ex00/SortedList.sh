#!/bin/bash
#occArr[i]=($i+system('cat histoire.txt  | tr ' ' '\n' | grep -c "the"'))
#for (key in occArr) { print occArr[key] }
#marche pas
awk -F ' ' 'BEGIN {i=1} {
    while ($i) {
        occArr[$i]=system("cat histoire.txt | tr \" \"  \"\n\" | grep -c "$i" ")
        i++
    }
} END {for (key in occArr) { print key" "occArr[key] }}' histoire.txt
