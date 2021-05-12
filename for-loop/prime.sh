#!/bin/bash -x
read -p "enter a number:" n
isPrime="is prime"
for((i=2; i<=$n/2; i++))
do
	if [ $(($n%$i)) -eq 0 ]
	then
		isPrime="is not prime"
 		break
	fi
done 
echo  $n $isPrime
