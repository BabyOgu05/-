#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
	echo "No exists"
	mkdir "$folder_name"
fi

cd "$folder_name"


for i in $(seq 0 4); do
	mkdir "file$i"
	
	echo "This is file $i" > "file$i/$i.txt"
	echo "$i"
done
