#!bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
	echo "No exists"
	mkdir "$folder_name"
fi

cd "$folder_name"

for i in $(seq 0 4); do
	echo "This is file $i" > "file${i}.txt"
done

tar -cvf files.tar file*.txt

mkdir files
mv files.tar files/
cd files

tar -xvf files.tar
