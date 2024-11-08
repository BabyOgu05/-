#!/bin/bash

num1=$1
operater=$2
num2=$3

if [ "$operater" = "+" ]; then
	result=$((num1+num2))
elif [ "$operater" = "-" ]; then
	result=$((num1-num2))
else
	echo "Retry"
	exit 1
fi

echo "$result"
