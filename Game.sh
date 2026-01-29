#!bin/bash

Game(){

	
}

Clanker_chooses(){

	local Comp_choices=("Rock" "Paper" "Scissors" )

echo  "${Comp_choices[$RANDOM % ${#Comp_choices[@]}]}"

}
Comp_choice= ($Clanker_chooses)

Player_chooses(){
		echo -e "



		"
		read   -p " 
		A) Rock
		B) Paper
		C) Scissors " answer2

		case $answer2 in
		A|a|Rock)
			User_choice="Rock"
			;;
		B|b|Paper)
			User_choice="Paper"
		;;
		C|c|Scissors)
			User_choice="Scissors"
		;;
		*) echo "try again"
		y/n_choices 
		;;

		esac


		}


y/n_choices(){

		while true; do
			read -p "$name want to play a game?" answer

			case $answer in
			Y|y|yes|Yes) echo " Lets play rock,paper,scissors" 
			Player_game
			;;
			n|N|no|No) echo " its okay, you can LEAVE!!"
			exit
			;;
			*) echo -e "

				 yes or no"
			continue
			;;
			
			esac
		done 

	}


	read -p "hi, my name is MOBRO whats yours" name
	echo -e "

	"

	y/n_choices

