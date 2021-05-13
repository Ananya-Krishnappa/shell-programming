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
sorted=$(printf '%s\n' "${randomArray[@]}" | sort -nu)
echo "Array in sorted order :"
echo ${sorted[@]}

secondGreatest=$(printf '%s\n' "${randomArray[@]}" | sort -n | tail -2 | head -1)
echo second largest is $secondGreatest
secondSmallest=$(printf '%s\n' "${randomArray[@]}" | sort -n | head -2 | tail -1)
echo second smallest is $secondSmallest


