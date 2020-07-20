#!/bin/bash -x 

echo "Flip Coin Combination:"

coin=$((RANDOM%2))
if [ $coin -eq 0 ]
then
	echo "Heads Wins"
else
	echo "Tails Wins"
fi
