xmin=1
max=12
declare -A individuals
declare -A countperson
for((i=1; i<=50; i++))
do
    number=$(expr $min + $RANDOM % $max)
    individuals[$number]="${individuals[$number]} $i"
	 countperson[$number]=$((${countperson[$number]}+1))

done
for i in ${!individuals[@]}
do
    echo "month-"$i "has birthdays of" ${individuals[$i]}
done
for j in ${!countperson[@]}
do
    echo "month-"$j "has birthdays of" ${countperson[$j]} "people"
done
