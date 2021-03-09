#!/bin/bash

heads_count=
tails_count=
while [ $heads_count -le 20 -a $tails_count -le 20 ]
do
		if [ $(( RANDOM % 2 )) -eq 0 ]
		then
			heads_count=$(( heads_count + 1 ))
		else
			tails_count=$(( tails_count + 1 ))
		fi
done
if [ $heads_count -gt $tails_count ]
then
	echo "HEADS - $heads_count WON WITH $(( heads_count - tails_count )) MARGIN "
else
	echo "TAILS - $tails_count WON WITH $(( tails_count -heads_count )) MARGIN "
fi
if [ $heads_count -eq $tails_count ]
then
	head_difference=0
	tails_difference=0
while [ $head_difference -le 2 -a $tails_difference -le 2 ]
do
	if [ $(( RANDOM % 2 )) -eq 0 ]
                then
                        heads_count=$(( heads_count + 1 ))
			echo "Heads"
                else
                        tails_count=$(( tails_count + 1 ))
			echo "Tails"
                fi
		head_difference=$(( heads_count - tails_count ))
        	tails_difference=$(( tails_count - heads_count ))
done

if [ $heads_count -gt $tails_count ]
then
        echo "HEADS - $heads_count WON WITH $(( heads_count - tails_count )) MARGIN "
else
        echo "TAILS - $tails_count WON WITH $(( tails_count -heads_count )) MARGIN "
fi
fi
