#!/bin/bash -x

heads_Side=1
tails_Side=0
count=0
count1=0
count2=0

while [ $count != 100 ]
do
((count++))
side_Of_Coin=$((RANDOM%2))
if [[ $side_Of_Coin == $heads_Side ]]
then
	((count1++))
	echo "Heads"
elif [[ $side_Of_Coin == $tails_Side ]]
then
	((count2++))
	echo "Tails"
fi
done
declare -A percentage
percentage[singlet_Head]=$( echo "scale=2; $count1/$count*100 " | bc )
percentage[singlet_Tail]=$( echo "scale=2; $count2/$count*100 " | bc )
