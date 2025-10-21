#!/bin/bash


	echo "    "
	echo "    "
	echo "    "
	echo "D) want to put something in my magic bag (awnser with the refered letter)"
	echo "E) want to remove somthing from my magic bag"
	echo "F) List them again"

print_menu(){
	echo -e "
	D) want to put something in my magic bag (awnser with the refered letter)
	E) want to remove somthing from my magic bag
	F) List them again"
}
	echo -e "Keep this on line one \nThis on line 2 \n3 \n4 \n\n\n\nAnd line 8!"
get_user_input(){
	echo -e "Please make a selection for the list below: "
	print_menu
	read input
}

#read -p "enter choice below: " user_input
get_user_input
case $input in
	A|a) #statement here - call to your function
		echo "good"
		;;
	B|b) echo "okay"
		;;
	3) echo "alright"
		;;
	e) echo "careful"
		;;
	*) echo "bad" 
	get_user_input
		;;
esac