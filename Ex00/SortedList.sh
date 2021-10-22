#!/bin/bash
#occArr[i]=($i+system('cat histoire.txt  | tr ' ' '\n' | grep -c "$i"'))

awk -F ' ' '
BEGIN {i=1;countOccu=1}{ 
    while ($i) { 
        k=1;
        while ($k) {
            if($k==$i){
                countOccu++
            };
            k++;  
        };
        occArr[$i]=countOccu;
        countOccu=0;
        i++;
    }
} END { 
    for (key in occArr) { print key" "occArr[key] } 
}' histoire.txt

#Version ligne:
# awk -F ' ' 'BEGIN {i=1;countOccu=1}{ while ($i) { k=1;while ($k) { if($k==$i){ countOccu++ }; k++;  }; occArr[$i]=countOccu; countOccu=0; i++; } } END { for (key in occArr) { print key" "occArr[key] } }' histoire.txt