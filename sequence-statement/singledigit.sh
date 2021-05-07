#!/bin/bash -x
min=0
max=9
number=$(expr $min + $RANDOM % $max)
echo single digit number is $number
