#!/bin/bash

heads_count=0
tails_count=0
while [ $heads_count -le 20 -a $tails_count -le 20 ]
do
		if [ $heads_count -eq 21 -a $tails_count -eq 21 ]
		then
		if [ $(( RANDOM % 2 )) -eq 0 ]
		then
			heads_count=$(( heads_count + 1 ))
		else
			tails_count=$(( tails_count + 1 ))
		fi
done
if [ $heads_count -eq 21 ]
then
	echo "HEADS - $heads_count WON WITH $(( heads_count - tails_count )) MARGIN "
else
	echo "TAILS - $tails_count WON WITH $(( tails_count -heads_count )) MARGIN "
fi






