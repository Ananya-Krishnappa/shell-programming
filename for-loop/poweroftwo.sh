#!/bin/bash 
n=$1
m=2
res=1
for((i=1; i<=$n; i++))
do
	res=$(($res*$m))
	echo $res
done

