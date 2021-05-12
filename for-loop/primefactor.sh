#! /bin/bash -x
num=$1
for ((i=2; i<=$num; i++))
do
	if [ $((num%i)) -ne 0 ]
	then
		continue;
	fi
	isPrime=1
	for ((j=2; j<$i/2; j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			isPrime=0
			break
		fi
	done
	if [ $isPrime == 1 ]
	then
		num=$((num/i))
		echo $i
	fi
done

