#!/bin/bash

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
answer1
}

answer1(){ 
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
option2
}

option2(){ 
echo -e "


D) want to put something in my magic bag (answer with the refered letter)
E) want to remove a specific item from my magic bag
F) want to view a specfic item
G) want to remove an item at the end of the bag
" 
echo -e "

"
reads2 
}

reads2(){
read answer2
answer2d
}

answer2d(){ 
case $answer2 in

D | d) echo -e " 

what do you want to add to the bag"
read item
 array_of_objects+=("$item")
 echo "${array_of_objects[@]}"
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
;;

F | f) 
;;
*)echo "Try again"
;;
esac 
}

greetings