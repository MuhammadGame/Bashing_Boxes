#!/bin/bash

read -p "Type 1 or 2 or 3" answer


firsthing() {
case $answer in
	1) echo "1"
	;;
	2) echo "2"
	;;
	3) echo "3" 
	secondthing
	;;
	*) echo "what?"
	;;
esac
}

secondthing() {
	read -p "do you want to do something" yesorno
	case $yesorno in
		y | Y) echo "okay"
		;;
		n | N) firsthing
		;;
	esac

}

firsthing