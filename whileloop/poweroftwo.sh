#!/bin/bash 
n=$1
m=2
res=1
i=1
while [ $i -le $n ]
do
   res=$(($res*$m))
	i=$((i+1))
	if [ $res -le 256 ]
	then
		echo $res
	fi
done

