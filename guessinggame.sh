#!/usr/bin/env bash
# File: guessinggame.sh
# NUMBER GUESSING GAME
#Author: Hector Sanchez                          
#Summary: this script is built to guess the number
#of files in this directory

clear
ANSWER=4
CORRECT=false
echo ============================
echo WELCOME TO OUR GUESSING GAME
echo ============================
echo What is your name?
read NAME

while [ "$CORRECT" != "true" ]
do
	echo "$NAME guess a number between 1 and 10."
	read NUM
	clear
	if [ "$NUM" -lt 4 ]; then
		echo "$NAME your guess is too low"
		echo "===== Try again ====="
		echo ""
	elif [ "$NUM" -gt 4 ]; then
		echo "$NAME your guess is too hight"
		echo "====== Try again ======"
		echo ""
	elif [ "$NUM" -eq 4 ]; then
		echo "=== CONGRATULATIONS!!! ==="
		echo "$NAME $NUM was the correct answer"
		echo ""
		echo "Now do not forget to run the following command for the READ.md file to be created:"
		echo "make READ.md"
		CORRECT=true
	else
		echo "$NAME sorry, incorrect."
	fi
done
