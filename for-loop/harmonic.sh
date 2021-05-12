#!/bin/bash
n=$1
for((i=1; i<=n; i++))
do
	a=`expr 1/$i`
	echo -n "  " $a
done

