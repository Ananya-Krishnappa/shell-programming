#!/bin/bash -x
min=100
max=999
minRandom=0
maxRandom=0
for i in 0 1 2 3 4
do
   digit=$(( min + $RANDOM % max ))
   echo $digit
   if [ $i == 0 ]
   then
      minRandom=$digit
      maxRandom=$digit
   else
      if [ $digit -lt $minRandom ]
      then
         minRandom=$digit
      fi
      if [ $digit -gt $maxRandom ]
      then
         maxRandom=$digit
      fi
   fi

done
echo minimum randon number is $minRandom
echo maximum random number is $maxRandom
