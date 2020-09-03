#!/bin/bash -x

read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

arith_computation1=$(( $a+$b*$c ))
arith_computation2=$(( $a*$b+$c ))

echo $arith_computation1
echo $arith_computation2
