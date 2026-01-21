#!bin/bash

	y/n_choices(){

		while true; do
		read -p "$name want to play a game?" answer

			case $answer in
			Y|y|yes|Yes) echo " Lets play rock,paper,scissors"
			;;
			n|N|no|No) echo " its okay, you can LEAVE!!"
			exit
			;;
			*) echo e"

				 y/n"
			continue
			;;
			
			esac
		done 

	}


	read -p "hi, my name is MOBRO whats yours" name
	echo -e "

	"

	y/n_choices

