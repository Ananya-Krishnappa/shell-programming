#!/bin/bash 
guess=-1
num=0
echo "guess a number between 1 to 100"
answer=$((RANDOM%100 + 1))
while [ $guess -ne $answer ]
do
	num=$((num+1))
	read -p "enter guess $num: " guess
	if [ $guess -lt $answer ]
	then
		echo "guess a higher number"
	elif [ $guess -gt $answer ]
	then
		echo "guess a lower number"
	fi
done
echo "Correct! This took $num guesses"


