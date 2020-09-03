#!/bin/bash -x

declare -A dictStoreComputation

read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

dictStoreComputation["a+b*c"]=$(( $a+$b*$c ))
dictStoreComputation["a*b+c"]=$(( $a*$b+$c ))
dictStoreComputation["c+a/b"]=$(( $c+$a/$b ))
dictStoreComputation["a%b+c"]=$(( $a%$b+$c ))

i=0
for val in ${dictStoreComputation[@]}
do
	array[$i]=$val
	((i++))
done

for (( i=0;i<${#array[@]};i++ ))
do
	for (( j=i+1;j<${#array[@]};j++ ))
	do
		if [ ${array[$i]} -lt ${array[$j]} ]
		then
			tmp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$tmp
		fi
	done
done

echo "Sorted Computation Result in Descending Order: " ${array[@]}
