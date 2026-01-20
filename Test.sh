#!/bin/bash


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

greetings(){
echo "Hi Traveller what's your name"
read name

echo "$name want to see whats in my magic bag (awnser with the refered letter)"
echo "A) yes"
echo "B) no"
echo "C) leave"
reads 
}

reads(){
read answer
1stAnswer
}

1stAnswer(){ 
case $answer in 
A | a) echo "${array_of_objects[@]}"
sleep 3
option2
;;
B | b) echo "alright" 
sleep 3
exit
;;
C | c) exit
;;
*) echo "what?"
;;
esac
}

option2(){ 
echo -e "


D) want to put something in my magic bag (answer with the refered letter)
E) want to remove a specific item from my magic bag
F) want to view a specfic item
G) want to remove an item at the end of the bag
" 
reads2 
}

reads2(){
read answer2
2ndAnswer
}

2ndAnswer(){ 
case $answer2 in

D | d) 	echo -e "
what do you want to add to the bag?"
read item
array_of_objects+=("$item")
sleep 1
echo -e "
${array_of_objects[@]}"
echo -e "

"
option3
;;

E | e) echo -e "
"
echo "what do you want to remove from the bag?"
echo -e "
"
echo "${array_of_objects[@]}"
read -p "enter a number you want to remove from my bag between 0-9: " number
unset array_of_objects[$((number-1))]
echo -e "${array_of_objects[@]}"
echo -e "

"
option3
;;

F | f) echo -e "
pick any number from the 0-9 to inspect it
"
	read number2
	echo "${array_of_objects[$number2]}"
echo -e "

"
option3
;;

G | g) unset 'array_of_objects[$((${#array_of_objects[@]} - 1))]'
		echo -e "${array_of_objects[@]}"
echo -e "

"
option3
;;

*)echo "Try again"
;;
esac 
}

option3(){ 	echo "H) save this bag!(answer with the refered letter)"
			echo "I) load a previously saved bag"
			echo "J) List all the saved bags"
reads3
 }

reads3(){
read answer3
3rdAnswer
}

3rdAnswer(){
	case $answer3 in

H | h) 

	echo -e "

	what do you want to name this save_bag (no spaces)"
	read save_name
	touch /home/sasuke/Bashing_Boxes/data/$save_name.sh
	declare -p array_of_objects > /home/sasuke/Bashing_Boxes/data/$save_name.sh
	ls /home/sasuke/Bashing_Boxes/data
;;
I | i)
	echo -e "


	Here are the saved bags"
						
	sleep 2

	ls /home/sasuke/Bashing_Boxes/data

	read -p "
		type the name of your bag   " save_name


	if [[ "$save_name" != *.sh ]]; then 
				save_name="${save_name}.sh"
	fi
	save_path="/home/sasuke/Bashing_Boxes/data/$save_name"

;;

esac }

greetings