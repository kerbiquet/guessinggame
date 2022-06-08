script_file := guessinggame.sh 
README.md: $(script_file)
	echo "# guessinggame Project" > README.md
	echo -n "Generation date: " >> README.md
	date >> README.md
	echo -n "number of non-empty lines of the script:"  	>>README.md
	cat $(script_file) | wc -l >>README.md 
