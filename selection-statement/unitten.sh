#!/bin/bash -x
echo -n "Enter number : "
read n
if [ $n == 1 ]
then
    echo "unit"
elif [ $n == 10 ]
then
   echo "tens"
elif [ $n == 100 ]
then
   echo "hundreds"
elif [ $n == 1000 ]
then
   echo "thousand"
else
   echo "not a unit of ten"
fi
