#!/bin/bash -x

function diceRoll()
{
roll=$((RANDOM%6+1))
echo "$roll"
}

position=0
endPosition=100

while [ $position -ne $endPosition ]
do 
	rollingDice="$( diceRoll )"

	position=$(( $position +$rollingDice )) 
done
