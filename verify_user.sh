#!/bin/bash
echo "Input your name"
read name
echo "Input your password"
read pass
file='users_list.txt'
i=1
while read line; do

if [[ "$line" = "$name" ]]
then
	read ex_pass
	if [[ "$ex_pass" = "$pass" ]]
	then
		echo "Auth complete, do anything you want"
	else
		echo "Go out of here"
	fi
fi

i=$((i+1))
done < $file
