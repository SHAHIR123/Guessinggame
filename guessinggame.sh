#!/usr/bin/env bash
# File: guessinggame.sh

dirarray=($(ls -d */))
dircount=${#dirarray[@]}
dirguess=0

function checkguess {
    #usage of an if statement
    if [[$1 -lt $2]]
    then
    echo "echo Too low"
    elif [[$1 -gt $2]]
    then
    echo "echo Too high"
    fi
}

# usage of a loop

while [ $dirguess -ne $dircount ]
do
echo "Guess the number of directories!"
#collecting user response
read dirguess

$(checkguess $dirguess $dircount)

done
echo "You got it right! congrats!"
