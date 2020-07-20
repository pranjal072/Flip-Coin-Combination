#!/bin/bash

echo "Flip Coin Combination:"

declare -A Singlet=( [H]=0 [T]=0 )
flipnum=40
for((i=0; i<$flipnum; i++))
do
   coin=$((RANDOM%2))
   if [ $coin -eq 0 ]
   then
      ((Singlet[H]++))
   else
      ((Singlet[T]++))
   fi
done
echo "Percentage of Singlet Combination are: "
for key in ${!Singlet[@]}
do
	Singlet[$key]=`printf %.2f "$(( (${Singlet[$key]})*100*100/$flipnum ))e-2"`
	echo "$key : ${Singlet[$key]}"
done

