#!/bin/bash -x
function checkPalindrome() {
   while [ $num -gt 0 ]
	do
   	s=$(( $num % 10 ))
    	num=$(( $num / 10 ))
    	rev=$( echo ${rev}${s} )
	done

	if [ $temp -eq $rev ];
	then
   	 echo "Number is palindrome"
	else
   	 echo "Number is NOT palindrome"
	fi
}
num=$1
rev=""
temp=$num
checkPalindrome $num;


function prime()
{
    for((i=2; i<=number; i++))
    do
        if [ `expr $number % $i` == 0 ]
        then
            echo $number is not prime
            exit
        fi
    done
    echo $number is a prime number
}
number=$1
prime $number;



