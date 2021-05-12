#!/bin/bash -x
headcount=0
tailcount=0
while [[ $headcount -lt 11 || $tailcount -lt 11 ]]
do
    Flip=$(($(($RANDOM%10))%2))
    if [ $Flip -eq 1 ]
    then
        echo "heads"
        headcount=$((headcount+1))
        if [ $headcount -eq 11 ]
        then
            break
        fi
    else
        echo "tails"
        tailcount=$((tailcount+1))
        if [ $tailcount -eq 11 ]
        then
            break
        fi
    fi
done
echo "head count is" $headcount "and tail count is" $tailcount

