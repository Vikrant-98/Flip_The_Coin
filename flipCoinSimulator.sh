#!/bin/bash -x

heads_Side=1
tails_Side=0

side_Of_Coin=$((RANDOM%2))
if [[ $side_Of_Coin == $heads_Side ]]
then
	echo "Heads"
elif [[ $side_Of_Coin == $tails_Side ]]
then
	echo "Tails"
fi

