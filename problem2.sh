#!/bin/bash
read -p "GOW MANY TIMES TO FLIP THE COIN ?	" user_input
for (( i=0; i<$user_input; i++ ))
do
if [ $(( RANDOM % 2 )) -eq 0 ]
then
	echo "HEADS"
else
	echo "TAILS"
fi
done
