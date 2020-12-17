#!/bin/bash -x

function diceRoll()
{
	roll=$((RANDOM%6+1))
	echo "$roll"
}

numberofPlayer=1
position=0
ENDPOSITION=100
STARTPOSITION=0
NOPLAY=0
LADDER=1
SNAKE=2
echo "welcome to snake and ladder"

roll=$( diceRoll )
checkOptions=$((RANDOM%3))

case $checkOptions in
	$NOPLAY)
	position=$position
	;;
	$LADDER)
	if [ $(($position+$roll)) -gt $ENDPOSITION ]
	then
	position=$ENDPOSITION
	else
	position=$(($position+$roll))
	fi
	;;
	SNAKE)
	if [ $(($position-$roll)) -lt $STARTPOSITION ]
	then
	position=$STARTPOSITION
	else
	position=$(($poition-$roll))
	fi
	;;
esac

