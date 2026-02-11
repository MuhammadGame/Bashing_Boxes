#!bin/bash

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
				Game
			;;
			B|b|Paper)
				User_choice="Paper"
				Game
			;;
			C|c|Scissors)
				User_choice="Scissors"
				Game

			;;
			*) echo "try again"
			y/n_choices 
			;;
		esac


		}
Clanker_chooses(){

	Comp_choices=("Rock" "Paper" "Scissors" )

echo  "${Comp_choices[$RANDOM % ${#Comp_choices[@]}]}"

}


	Game(){

	Comp_choice=$(Clanker_chooses)

	echo "You chose $User_choice"
	echo "PC chose $Comp_choice"
	game_result_user=0
	if [[  "$User_choice" ==  "$Comp_choice" ]]; then
		echo " tie! "
		game_result_user=2
	else
		case $User_choice in
			Rock)
				if [[ $Comp_choice == "Paper" ]]; then
					game_result_user=0
				else
					game_result_user=1
				fi
				;;
			Paper)
				if [[ $Comp_choice == "Scissors" ]]; then
					game_result_user=0
				else
					game_result_user=1
				fi
				;;
			Scissors)
				if [[ $Comp_choice == "Rock" ]]; then
					game_result_user=0
				else
					game_result_user=1
				fi
				;;
			*)
				;;
		esac
	fi
	# this is better than the if statement because it checks each item rather than just checking the first item. its also much easier to edit

	case $game_result_user in
		0) echo "Computer wins!"
		;;
		1) echo "User wins!"
		;;
		2) echo "Its a tie!"
		;;
		*) echo "Invalid game condtion!"
			;;
	esac



		#the if statement doesnt work because it only checks if the condition is true or not if a conditions is true its doesnt matter what the computer chooses.
		#so long if rock is true than you will ether get a tie or a win.

	

 

	
	for (( j=1; j<=1; )); do
		read -p "$name want to play again? " answer3
		case $answer3 in
		y|yes|Yes|Y) echo -e "/n/n"
		Player_chooses
		(( j=2 ))
		;;
		No|n|N|no) echo "thanks for playing tho"
		exit
		(( J=2 ))
		;;
		*) echo -e "/nyes or no"
		continue
		;;
		esac
	done

	}



y/n_choices(){

	for (( i=1; i<=1; )); do
		read -p "$name want to play a game?" answer
		case $answer in
		Y|y|yes|Yes) echo " Lets play rock,paper,scissors" 
		(( i=2 ))
		echo "$i"
		Player_chooses
		;;
		n|N|no|No) echo " its okay, you can LEAVE!!"
		(( i=2 ))
		exit
		;;
		*) echo -e "\nyes or no"
		continue
		;;
			
		esac
	done 

}


	read -p "hi, my name is MOBRO whats yours " name
	echo -e "

	"

	y/n_choices

