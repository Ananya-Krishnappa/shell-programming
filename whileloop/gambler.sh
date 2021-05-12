#!/bin/bash -x
totalattempts=0
betswon=0
n=100
while [[ $n -gt 0 && $n -lt 200 ]]
do
    totalattempts=$((totalattempts+1))
    bet=$(($(($RANDOM%10))%2))
    if [ $bet -eq 1 ]
    then
        echo "bet won"
        betswon=$((betswon+1))
        n=$((n+1))
    else
        echo "bet lost"
        n=$((n-1))
    fi
done
echo "number of bets won " $betswon "and number of bets made is " $totalattempts
