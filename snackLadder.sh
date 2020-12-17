#!/bin/bash -x

function diceRoll()
{
	roll=$((RANDOM%6+1))
	echo "$roll"
}

numberofPlayer=1
position=0
endPosition=100
startPosition=0

echo "welcome to snake and ladder"

diceRoll

