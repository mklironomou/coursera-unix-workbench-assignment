README.md: guessinggame.sh
	echo "# Project" > README.md
	echo "Coursera - The Unix Workbench\n" >> README.md
	echo "Peer-graded Assignment on Bash, Make, Git, and GitHub\n" >> README.md
	echo "### Creation datetime" >> README.md
	date >> README.md
	echo "\n### Total code lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
