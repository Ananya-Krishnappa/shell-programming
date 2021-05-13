#!/bin/bash
n=5
arr=(0 -1 2 -3 1)
function findTriplets() {
    found=0
    for((i=0; i<$n-2; i++))
    do
        for((j=$((i+1)); j<=$n-1; j++))
        do
            for((k=$((j+1)); k<$n; k++))
            do
                if [ $(( ${arr[$i]}+${arr[$j]}+${arr[$k]} )) -eq 0 ]
                then
						  echo triplets found	
                    echo ${arr[i]}
                    echo ${arr[j]}
                    echo ${arr[k]}
                    found=1
                fi
            done
        done
   done
	if [ $found -eq 0 ]
	then 
   	echo "triplets do not exist "
	fi
}
findTriplets $n $arr



