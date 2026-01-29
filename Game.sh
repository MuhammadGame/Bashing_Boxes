#!bin/bash
Clanker_game(){

	local Clanker_choice=("Rock" "Paper" "Scissors" )

echo  "${Clanker_choice[$RANDOM % ${#Clanker_choice[@]}]}"

}


		Player_game(){
		echo -e "



		"
	while true ; do
			read -p "try again"


		read   -p " 
		A) Rock
		B) Paper
		C) Scissors " answer2

		case $answer2 in
		A|a|Rock)
			;;
		B|b|Paper)
		;;
		C|c|Scissors)
		;;
		*) echo "try again"
		continue
		;;

		esac
	done

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

