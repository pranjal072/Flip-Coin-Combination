#!/bin/bash

echo "Flip Coin Combination:"

declare -A Singlet=( [H]=0 [T]=0 )
flipnum=40
for((i=0; i<$flipnum; i++))
do
   coin=$((RANDOM%2))
	case $coin in
      0)
         ((Singlet[H]++)) ;;
      1)
         ((Singlet[T]++)) ;;
	esac
done
echo "Percentage of Singlet Combination are: "
for key in ${!Singlet[@]}
do
	Singlet[$key]=`printf %.2f "$(( (${Singlet[$key]})*100*100/$flipnum ))e-2"`
	echo "$key : ${Singlet[$key]}"
done


declare -A Doublet=( [HH]=0 [HT]=0 [TH]=0 [TT]=0 )

for((i=0; i<$flipnum; i++))
do
   coin=$((RANDOM%4))
   case $coin in 
   	0)
      	((Doublet[HH]++)) ;;
		1)
      	((Doublet[HT]++)) ;;
		2)
			((Doublet[TH]++)) ;;
		3)
			((Doublet[TT]++)) ;;
	esac
done
echo "Percentage of Doublet Combination are: "
for key in ${!Doublet[@]}
do
   Doublet[$key]=`printf %.2f "$(( (${Doublet[$key]})*100*100/$flipnum ))e-2"`
   echo "$key : ${Doublet[$key]}"
done
