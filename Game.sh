#!bin/bash

	read -p "hi, my name is MOBRO whats yours" name

	echo "hey $name want to play a game"
	read answer

	case $answer in
	Y|y|yes|Yes) echo " Lets play rock,paper,scissors"
	;;
	n|N|no|No) echo " its okay, you can LEAVE!!"
