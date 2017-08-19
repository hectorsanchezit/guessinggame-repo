README.md: 
	touch README.md

README.md: guessinggame.sh
	echo Title of this project: > README.md
	grep -a "NUMBER" guessinggame.sh >> README.md
	echo "" >> README.md
	echo Date: >> README.md
	date >> README.md
	echo >> README.md
	echo Number of lines: >> README.md
	wc -l guessinggame.sh >> README.md
