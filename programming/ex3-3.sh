#!/bin/bash

weight=$1
height_cm=$2

height=$(echo "scale=2; $height_cm/100" | bc -l)
bmi=$(echo "scale=2; $weight/($height * $height)" | bc -l)

if [ $(echo "$bmi<18.5" | bc -l) -eq 1 ]; then
	echo "lower than average"
elif [ $(echo "$bmi>18.5 && $bmi<23.5" | bc -l) -eq 1 ]; then
	echo "average"
else
	echo "higher than average"
fi


