#!/bin/bash -x
read -p "enter lower limit of range:" lower
read -p "enter upper limit of range:" upper
for num in `seq $lower $upper`
do
	isPrime="is prime"
	for((i=2; i<=$num/2; i++))
	do
 		if [ $(($num % $i)) -eq 0 ]
		then
		   isPrime="is not prime"
			break
		fi
	done
	echo $num $isPrime
done

