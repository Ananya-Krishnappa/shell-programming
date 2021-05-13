#!/bin/bash 
l=0
h=100
n=${#h}
temp=1
samedigitnums=()
for((i=1; i<$n; i++))
do
    temp=$(($(($(($temp*10))+1))))
    for((j=1; j<=9; j++))
    do
        res=$(($temp*$j))
        if [[ $res -ge 0 && $res -le 100 ]]
        then
            samedigitnums+=($res)
        fi
    done
done
echo ${samedigitnums[@]}
