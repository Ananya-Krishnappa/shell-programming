#!/bin/bash -x
sum=0
n=1
min=10
max=99
for i in 0 1 2 3 4
do
	random=$(expr $min + $RANDOM % $max)
	echo Random number $i is $random
	sum=$(( sum + random ))
	n=$(( n + 1 ))
done
echo sum of 5 random numbers is $sum
echo avg of 5 random numbers is $(( sum / n ))
