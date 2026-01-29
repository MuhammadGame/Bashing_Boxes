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

	if [[  $User_choice ==  $Comp_choice  ]] then
		echo " tie! "

	elif [[ $User_choice == Rock ]] || [[ $Comp_choice == Scissors ]] || \
		[[ $User_choice == Paper ]] || [[ $Comp_choice == Rock ]] || \
		[[ $User_choice == Scissors ]] || [[ $Comp_choice == Paper ]] then 
		echo " You Won "
	else
		echo "Mobro wins"

 

	fi
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

