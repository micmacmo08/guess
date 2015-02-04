#!/bin/bash

#I, Michael Morris, affirm that I am the sole author of this script, it is my
#own original work

#Date: 02/03/15
#Version 1.0

RANGE=99

guesses=0
guess=-1

number=$RANDOM		#creates random number
let "number %= $RANGE"	#makes number between 0 and 99
((number++))		#makes number between 1 and 100

echo "I'm thinking of a number between 1 and 100. What do you think it is?"
until [ "$guess" = "$number" ]
do
	((guesses++))
	echo "What is your guess? "
	read guess
	if [ "$guess" -gt "$number" ]
	then
		echo "The number I'm thinking is LOWER than what you guessed"
	elif [ "$guess" -lt "$number" ]
	then
		echo "The number I'm thinking is HIGHER than what you guessed"
	elif [ "$guess" -eq "$number" ]
	then
		echo "Correct! You got the answer in $guesses guesses!"
	fi
done
exit $guesses
