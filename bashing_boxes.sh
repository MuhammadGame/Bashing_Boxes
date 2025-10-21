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

	sleep 4
	echo "    "
	echo "    "
	echo "    "
	echo "D) want to put something in my magic bag (awnser with the refered letter)"
	echo "E) want to remove somthing from my magic bag"
	echo "F) List them again"

	read answer2

	if [[ $answer2 == "D" ]] || [[ $answer2 == "d" ]] then

		echo " "
		echo " "
		echo " "
		echo "what do you want to add to the bag?"
		read item
		array_of_objects+=("item")
		sleep 1
		echo " "
		echo " "
		echo " "
		echo "check the list $name"
	elif [[ $answer2 == "E" ]] || [[ $answer2 == "e" ]] then
		echo " "
		echo " "
		echo " "
		echo "what do you want to remove from the bag?"
		echo " "
		echo " "
		echo "${array_of_objects[@]}"
		read -p "enter the item  you want to remove from my bag" item




	fi














elif [[ $anwser == "B" ]] || [[ $anwser == "b" ]]; then
	echo "alright"
	sleep 3 
	exit
 	#statements [[$awnser == "B"]];  

elif [[ $anwser == "C" ]]; then
exit 
 	#statements [[$C)=="C"]]; #then close the script 
fi

#After the array_of_objects is listed i need to the option for the user to use 
#A) press a number upto 10 and the corresponding item will be printed
#B)  



