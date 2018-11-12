#!/bin/bash


# Loti Ibrahimi (20015453) | Internet of Things Year 3

# Take two numbers from command line. 
# Show result of: 'bigger number'/'smaller number'.
# Check if user has entered valid number.

numX=0
numY=0
echo "---------------------------------------"
echo "|~ Divide Big number by Small number ~|"
echo "---------------------------------------"

# Read first user input (X):
until [ $numX -gt 0 ]
do
    echo "Enter your first number, X:"
    read numX

# Check input validity.
    if [ $numX -lt 1 ]
    then
        echo "!Invalid - please enter a valid number"
    fi
done


# Read second user inpit (Y):
until [ $numY -gt 0 ]
do
    echo "Enter your second number, Y:"
    read numY

# Check input validity.
    if [ $numY -lt 1 ]
    then
        echo "!Invalid - please enter a valid number"
    fi
done


echo "-------------------------"
echo "Numbers entered:
      - X:$numX
      - Y:$numY"
echo "-------------------------"


# Make sure it's the 'bigger number' / smaller number'
if [ $numX -gt $numY ] 
then
    ans=$(echo "$numX / $numY"|bc)

elif [ $numY -gt $numX ]
then
     ans=$(echo "$numY / $numX"|bc)
fi

echo "Answer: $ans"

