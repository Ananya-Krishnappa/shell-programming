#!/bin/bash -x
min=1
max=6
number=$(expr $min + $RANDOM % $max)
echo dice number is $number
