#!/bin/bash 
min=100
max=999
for ((i=0; i<=9; i++))
do
   digit=$((min + $(($RANDOM%max))))
	if [ $digit -gt 1000 ]
	then
		digit=999
	fi
   randomArray[$i]=$digit
done
echo ${randomArray[@]}
highest=-1
secondhighest=-1
index=0
for i in "${randomArray[@]}"
do
    if [ $index -eq 0 ]
    then
        highest=$i
        secondhighest=$i
    else
        if [ $i -gt $highest ]
        then
            secondhighest=$highest
            highest=$i
        fi
        if [[ $i -lt $highest && $i -gt $secondhighest ]]
        then
            secondhighest=$i
        fi    
    fi
    index=$(($index+1))
done
echo "highest is" $highest
echo "secondhighest is" $secondhighest

lowest=-1
secondlowest=-1
lowindex=0
for i in "${randomArray[@]}"
do
    if [ $lowindex -eq 0 ]
    then
        lowest=$i
        secondlowest=$i
    else
        if [ $i -lt $lowest ]
        then
            secondlowest=$lowest
            lowest=$i
        fi
        if [[ $i -gt $lowest && $i -lt $secondlowest ]]
        then
            secondlowest=$i
        fi    
    fi
    lowindex=$(($lowindex+1))
done
echo "lowest" $lowest
echo "secondlowest" $secondlowest
