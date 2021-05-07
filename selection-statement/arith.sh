#!/bin/bash -x
read -p "enter value for a:" a
read -p "enter value for b:" b
read -p "enter value for c:" c
res1=$(($a + $b * $c))
res2=$(($a % $b + $c))
res3=$(($c + $a / $b))
res4=$(($a * $b + $c))
res=( $res1 $res2 $res3 $res4 )
min=0
max=0
for index in ${!res[@]};
do
   echo ${res[index]}
   if [ $index == 0 ]
   then
      min=${res[index]}
      max=${res[index]}
   fi
   if [ ${res[index]} -lt $min ]
   then
    min=${res[index]}
   fi
   if [ ${res[index]} -gt $max ]
   then
    max=${res[index]}
   fi
done
echo min $min
echo  max $max
