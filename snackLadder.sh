#!/bin/bash 

function diceRoll()
{
	roll=$((RANDOM%6+1))
	echo "$roll"
}

function options()
{
roll=$( diceRoll )
checkOptions=$((RANDOM%3))

case $checkOptions in
   $NOPLAY)
   position=$position
   ;;
   $LADDER)
   if [ $(($position+$roll)) -gt $END_POSITION ]
   then
   position=$position
   else
   position=$(($position+$roll))
   fi
   ;;
   $SNAKE)
   if [ $(($position-$roll)) -lt $START_POSITION ]
   then
   position=$START_POSITION
   else
   position=$(($position-$roll))
   fi
   ;;
esac
echo "$position"
}

numberofPlayer=1
position=0
END_POSITION=100
START_POSITION=0
NOPLAY=0
LADDER=1
SNAKE=2
echo "welcome to snake and ladder"

while [ $position -ne $END_POSITION ]
do 
	options 
done

