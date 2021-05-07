#!/bin/bash -x
read -p "enter day:"  d
read -p "enter month:" m
if (( ($m >= 3 & $m <= 6 & $d <= 20) ))
then
    echo $m $d "True";
else
    echo "False";
fi

