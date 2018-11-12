#!/bin/bash

# Loti Ibrahimi (20015453) | Internet of Things Year 3

# Take in two user inputs: (X) & (Y).
# Simple Calculator to carry out the following operations: 
# - Addition (+)
# - Subtraction (-)
# - Multiplication (*)
# - Division (/)
# - Modulus [remainder] (%)


numX=0
numY=0

# Set varaibel to control whether the app runs or not. 'Y' - Yes by default.
proceedYN='Y'
echo "----------------------"
echo "|~ Basis Calculator ~|" 
echo "----------------------"

echo "Enter number X:"
read numX

echo "Enter number Y:"
read numY

echo "--------------------------------"

echo "Numbers pending action:
      X: $numX
      Y: $numY"
echo "--------------------------------"


while [ $proceedYN = "Y" ]
do
# Operation selection Menu
    echo "Please choose an operation:"
    echo "==========================="
    echo "1) Addition       (+)"
    echo "2) Subtraction    (-)"
    echo "3) Multiplication (*)"
    echo "4) Division       (/)"
    echo "5) Modulus        (%)"
    read option


# Using case switch to select operator.
# Display the answer.

    case "$option" in
	1) sum=$(echo "$numX + $numY"| bc)
	   echo "Successful addition:" $sum;;

	2) sum=$(echo "$numX - $numY"| bc)
           echo "Successful subtraction:" $sum;;
	
        3) sum=$(echo "$numX * $numY"| bc)
           echo "Successful multiplication:" $sum;;

        4) sum=$(echo "$numX / $numY"| bc)
           echo "Successful division:" $sum;;
		
	
        5) sum=$(echo "$numX % $numY"| bc)
           echo "Successful modulus:" $sum;;
	
        *) 
           echo "!Error - invalid option entered."
    esac

    echo "Do you wish to continue [Y/N]?"
    read proceedYN

    if [ $proceedYN != "Y" ]
    then
        exit
    fi
done
