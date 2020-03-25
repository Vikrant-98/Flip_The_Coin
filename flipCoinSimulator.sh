#!/bin/bash -x

heads_Side=1
tails_Side=0
count=0
count1=0
count2=0
count3=0
count4=0

while [ $count != 100 ]
do
	count_fix=0
	((count++))
	side_Of_Coin=$((RANDOM%2))
	if [[ $side_Of_Coin == $heads_Side ]]
	then
		while [ $count_fix != 1 ]
		do
			((count_fix++))
        		side_Of_Coin=$((RANDOM%2))
        		if [[ $side_Of_Coin == $heads_Side ]]
        		then
                		((count1++))
        		elif [[ $side_Of_Coin == $tails_Side ]]
        		then
                		((count2++))
        		fi
		done

	elif [[ $side_Of_Coin == $tails_Side ]]
	then
		while [ $count_fix != 1 ]
		do
			((count_fix++))
        		side_Of_Coin=$((RANDOM%2))
        		if [[ $side_Of_Coin == $heads_Side ]]
        		then
                		((count3++))
        		elif [[ $side_Of_Coin == $tails_Side ]]
        		then
                		((count4++))
        		fi
		done

	fi
done
declare -A percentage
percentage[Head_Head]=$( echo "scale=2; $count1/$count*100 " | bc )
percentage[Head_Tail]=$( echo "scale=2; $count2/$count*100 " | bc )
percentage[Tail_Head]=$( echo "scale=2; $count3/$count*100 " | bc )
percentage[Tail_Tail]=$( echo "scale=2; $count4/$count*100 " | bc )
