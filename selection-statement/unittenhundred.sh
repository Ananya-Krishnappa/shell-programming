#!/bin/bash -x
echo "enter a number"
read n
case $n in
1) echo "unit" ;;
10) echo "ten" ;;
100) echo "hundred" ;;
1000) echo "thousand" ;;
*) echo "not a unit of ten" ;;
esac
