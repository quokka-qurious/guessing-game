README.md:
	touch README.md
	echo "# Very, Very Exciting Guessing Game!!!" > README.md
	echo "## Timing Info" >> README.md
	echo "make was run at... " >> README.md
	date >> README.md
	echo "## Number of Lines" >> README.md
	echo "The number of lines in the guessing game is..." >> README.md
	cat guessinggame.sh | wc -l >> README.md	
	

