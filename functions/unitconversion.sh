#!/bin/bash -x
read -p "enter the value to convert:" value
result=""
read -p "enter the unit to convert in C or F:" unit 
function unitconversion() {
    case $unit in 
    C)  if [[ $value -gt 100 || $value -lt 0 ]]
        then
            echo "enter a value between 0 and 100"
        else
            result=$((($value * 9/5) + 32))
            echo  $value "celsius =" $result "fahrenheit"
        fi
    ;;
    F) if [[ $value -gt 212 || $value -lt 32 ]]
        then
            echo "enter a value between 32 and 212"
        else
            result=$((($value – 32) * 5/9)) 
            echo  $value "fahrenheit =" $result "celsius" 
        fi
    ;;
    esac
}
unitconversion $value $unit;

