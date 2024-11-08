#!bin/bash

echo "The program starst"

run_command() {
	ls $1
}

run_command "$1"

echo "The program ends"
