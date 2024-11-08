#!bin/bash

echo "Linux is fun? (yes or no)"
read answer

case $answer in
	[yY] | [yY][eE][sS])
		echo "yes"
		;;
	[nN] | [nN][oO])
		echo "no"
		;;
	*)
		echo "please say yes or no"
		;;
esac
