#!/bin/bash

#Backend array_of_objects(list)
array_of_objects=(
	"Propane Tank" 
	"Gumball Machine" 
	"Video game controller" 
	"Screwdriver" 
	"Pinata" 
	"Aspirin" 
	"Baseball" 
	"Invitation" 
	"Latern" "Toolbox"
)



#greeting the user
echo "Hi Traveller what's your name"
#user types name
read name
#humza told me it doesnt matter (he was right :(  )

echo "$name want to see whats in my magic bag (awnser with the refered letter)"
#gonna give user some options
#option=("$A)" "$B)" "$C)")
#got rid of this cause it didnt do anything

echo "A) yes"
echo "B) no"
echo "C) leave"


#A="yes"
#B="no"
#C="leave"
#got rid of this aswell because it turns out it doesnt do anything

read answer




	# These are going to be the new options for "A)
	#option2=("$D" "$E" "$F")




if [[ $answer == "A" ]] || [[ $answer == "a" ]]; then 
	echo "${array_of_objects[@]}"

	sleep 2
	echo -e "

	"
	echo "D) want to put something in my magic bag (answer with the refered letter)"
	echo "E) want to remove a specific item from my magic bag"
	echo "F) want to view a specfic item"
	echo "G) want to remove an item at the end of the bag"

	read answer2

	if [[ $answer2 == "D" ]] || [[ $answer2 == "d" ]] then

		echo " "
		echo " "
		echo " "
		echo "what do you want to add to the bag?"
		read item
		array_of_objects+=("$item")
		sleep 1
		echo -e "${array_of_objects[@]}"




	elif [[ $answer2 == "E" ]] || [[ $answer2 == "e" ]] then
		echo " "
		echo " "
		echo " "
		echo "what do you want to remove from the bag?"
		echo " "
		echo " "
		echo "${array_of_objects[@]}"
		read -p "enter a number you want to remove from my bag between 0-9: " number
		unset array_of_objects[$((number-1))]
		echo -e "${array_of_objects[@]}"


	elif [[ $answer2 == "F" ]] || [[ $answer2 == "f" ]]; then
		echo "pick any number from the 0-9 to inspect it"
		read number2
		echo "${array_of_objects[number2]}"

	elif [[ $answer2 == "G" ]] || [[ $answer2 == "g" ]]; then

		unset 'array_of_objects[$((${#array_of_objects[@]} - 1))]'
			echo -e "${array_of_objects[@]}"



	fi

elif [[ $anwser == "B" ]] || [[ $anwser == "b" ]]; then
	echo "alright"
	sleep 3 
	exit
 	#statements [[$awnser == "B"]];  
elif [[ $anwser == "C" ]]; then
	exit 
fi

#After the array_of_objects is listed i need to the option for the user to use 
#A) press a number upto 10 and the corresponding item will be printed
#B)  



