#!/usr/bin/env bash
# File: guessinggame.sh
clear
ANSWER=4
CORRECT=false
echo ============================
echo WELCOME TO OUR GUESSING GAME
echo ============================
while [ "$CORRECT" != "true" ]
do
	echo "Guess a number between 1 and 10."
	read NUM
	clear
	if [ "$NUM" -lt 4 ]; then
		echo "Your guess is too low"
		echo "===== Try again ====="
		echo ""
	elif [ "$NUM" -gt 4 ]; then
		echo "Your guess is too hight"
		echo "====== Try again ======"
		echo ""
	elif [ "$NUM" -eq 4 ]; then
		echo "You got the correct answer"
		echo "=== CONGRATULATIONS!!! ==="
		CORRECT=true
	else
		echo "Sorry, incorrect."
	fi
done
