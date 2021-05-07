#!/bin/bash -x
min=1
max=6
digit=$(expr $min + $RANDOM % $max)
echo first random dice number is $digit
digit1=$(expr $min + $RANDOM % $max)
echo secomd random dice number is $digit1
result=$((digit + digit1))
echo sum of two random dice numbers is $result
