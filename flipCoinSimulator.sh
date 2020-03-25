
#!/bin/bash -x

heads_Side=1
tails_Side=0
count[0]=0
while [ ${count[0]} != 100 ]
do
	count_fix=0
	count_fix1=0
	((count[0]++))
	side_Of_Coin=$((RANDOM%2))
	if [[ $side_Of_Coin == $heads_Side ]]
	then
		while [ $count_fix != 1 ]
		do
			((count_fix++))
        		side_Of_Coin=$((RANDOM%2))
        		if [[ $side_Of_Coin == $heads_Side ]]
        		then
                		while [ $count_fix1 != 1 ]
		                do
                        		((count_fix1++))
                        		side_Of_Coin=$((RANDOM%2))
                        			if [[ $side_Of_Coin == $heads_Side ]]
                        			then
                                			((count[1]++))
                        			elif [[ $side_Of_Coin == $tails_Side ]]
                        			then
                                			((count[2]++))
                        			fi
                		done

        		elif [[ $side_Of_Coin == $tails_Side ]]
        		then
                		while [ $count_fix1 != 1 ]
                		do
                        		((count_fix1++))
                        		side_Of_Coin=$((RANDOM%2))
                        			if [[ $side_Of_Coin == $heads_Side ]]
                        			then
                                			((count[3]++))
                        			elif [[ $side_Of_Coin == $tails_Side ]]
                        			then
                                			((count[4]++))
                        			fi
                		done

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
                		while [ $count_fix1 != 1 ]
                		do
                        		((count_fix1++))
                        		side_Of_Coin=$((RANDOM%2))
                        			if [[ $side_Of_Coin == $heads_Side ]]
                        			then
                                			((count[5]++))
                        			elif [[ $side_Of_Coin == $tails_Side ]]
                        			then
                                			((count[6]++))
                        			fi
                		done

        		elif [[ $side_Of_Coin == $tails_Side ]]
        		then
                		while [ $count_fix1 != 1 ]
                		do
                        		((count_fix1++))
                        		side_Of_Coin=$((RANDOM%2))
                        			if [[ $side_Of_Coin == $heads_Side ]]
                        			then
                                			((count[7]++))
                        			elif [[ $side_Of_Coin == $tails_Side ]]
                        			then
                                			((count[8]++))
                        			fi
                		done

        		fi
		done

	fi
done
count[9]=$((${count[1]}+${count[2]}+${count[3]}+${count[4]}))
count[10]=$((${count[5]}+${count[6]}+${count[7]}+${count[8]}))
count[11]=$((${count[1]}+${count[2]}))
count[12]=$((${count[3]}+${count[4]}))
count[13]=$((${count[5]}+${count[6]}))
count[14]=$((${count[7]}+${count[8]}))
declare -A percentage
percentage[Head]=$( echo "scale=2; ${count[9]}/${count[0]}*100 " | bc )
percentage[Tail]=$( echo "scale=2; ${count[10]}/${count[0]}*100 " | bc )
percentage[Head_Head]=$( echo "scale=2; ${count[11]}/${count[0]}*100 " | bc )
percentage[Head_Tail]=$( echo "scale=2; ${count[12]}/${count[0]}*100 " | bc )
percentage[Tail_Head]=$( echo "scale=2; ${count[13]}/${count[0]}*100 " | bc )
percentage[Tail_Tail]=$( echo "scale=2; ${count[14]}/${count[0]}*100 " | bc )
percentage[Head_Head_Head]=$( echo "scale=2; ${count[1]}/${count[0]}*100 " | bc )
percentage[Head_Head_Tail]=$( echo "scale=2; ${count[2]}/${count[0]}*100 " | bc )
percentage[Head_Tail_Head]=$( echo "scale=2; ${count[3]}/${count[0]}*100 " | bc )
percentage[Head_Tail_Tail]=$( echo "scale=2; ${count[4]}/${count[0]}*100 " | bc )
percentage[Tail_Head_Head]=$( echo "scale=2; ${count[5]}/${count[0]}*100 " | bc )
percentage[Tail_Head_Tail]=$( echo "scale=2; ${count[6]}/${count[0]}*100 " | bc )
percentage[Tail_Tail_Head]=$( echo "scale=2; ${count[7]}/${count[0]}*100 " | bc )
percentage[Tail_Tail_Tail]=$( echo "scale=2; ${count[8]}/${count[0]}*100 " | bc )
