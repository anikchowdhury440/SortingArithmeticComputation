#!/bin/bash -x

declare -A dictStoreComputation

read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

dictStoreComputation["a+b*c"]=$(( $a+$b*$c ))
dictStoreComputation["a*b+c"]=$(( $a*$b+$c ))
dictStoreComputation["c+a/b"]=$(( $c+$a/$b ))
dictStoreComputation["a%b+c"]=$(( $a%$b+$c ))

echo ${dictStoreComputation[@]}
