all: README.md

 
README.md:
	
	echo " #The Unix Workbench " > README.md
	echo " #Guessing Game ">> README.md
	echo " *This Make file was ran at:$(shell date  +%Y-%m-%d:%H:%M:%S) " >> README.md
	echo " *There were $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines in guessinggame.sh " >> README.md

clean:
	rm README.md

