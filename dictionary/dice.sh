#!/bin/bash
min=1
max=6
n=0
declare -A dicedict
while [ $n -ne 10 ]
do
    number=$(expr $min + $RANDOM % $max)
    dicedist[$number]=$((${dicedist[$number]}+1))
    if [ ${dicedist[$number]} -eq 10 ]
    then
         n=10
         maximum=$number
         echo dice $maximum has maximum count
    fi
done
minkey=0
minimum=0
index=0
for i in ${!dicedist[@]}
do
	if [ $index -eq 0 ]
	then
		minimum=${dicedist[$i]}
		minkey=$i
	else
		if [ ${dicedist[$i]} -lt $minimum ]
		then
			minimum=${dicedist[$i]}
			minkey=$i	
		fi
	fi
	index=$(($index+1))
	echo "dice:"$i "count:"${dicedist[$i]}
done
echo dice $minkey has minimum count

