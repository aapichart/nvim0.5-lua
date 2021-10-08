#!/bin/bash

clear
if [[ $DISPLAY ]] 
then
	clear
	echo " ............... Already Running on X Server Mode .............. "
else
	echo ""
	echo ""
	echo "         ################################################################################      "
	echo "         ##########             Run on tty mode or X-window mode           ##############      "
	echo "         ##########             [1] : on tty mode                          ##############      "
	echo "         ##########             [2] : on X-window mode                     ##############      "
	echo "         ################################################################################      "
	echo -n "         Please select [2] :"
	read -r choiceinput 
	choiceinput="${choiceinput:-2}"
	echo $choiceinput
	if [[ "$choiceinput" == 2 ]] 
	then
		if  [[ $DISPLAY ]] 
		then
			echo " X Server is running..... "
		else
			startx
        fi
	else
		clear
		echo " ............. Running on tty mode .............. "
		neofetch
	fi
fi

