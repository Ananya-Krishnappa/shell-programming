#!/bin/bash -x
echo -n "Enter number : "
read n
echo "enter a number to display date"
if [ $n == 1 ]
then
   echo "sunday"
elif [ $n == 2 ]
then
   echo "monday"
elif [ $n == 3 ]
then
   echo "tuesday"
elif [ $n == 4 ]
then
   echo "wednesday"
elif [ $n == 5 ]
then
   echo "thursday"
elif [ $n == 6 ]
then
   echo "friday"
elif [ $n == 7 ]
then
   echo "saturday"
fi
