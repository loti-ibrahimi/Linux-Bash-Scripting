#!/bin/bash 

# Loti Ibrahimi (20015453) | Internet of Things Year 3

# Shell Script to find out if a string entered by the user is a palindrome or not.


echo "------------------------------------------------------------"
echo "|Shell Script to see if input string is a Palindrome or not|"
echo "------------------------------------------------------------"
echo "Examples of a Palindromes:"
echo "* Word: racecar -> racecar"
echo "* Number: 123454321 -> 123454321"
echo "------------------------------------------------------------"
echo "Examples of non-Palindromes:"
echo "* Word: rabbit -> tibbar"
echo "* Number: 1234 -> 4321"
echo "------------------------------------------------------------"

proceedYN='Y'

# String can be a word or number "racecar" or "123454321", for example.

while [ $proceedYN = "Y" ]
do  
    echo "Please enter a word/numbers for Palindrome testing:"  
    read str
    str1=$(echo $str | rev)

    if [ $str = $str1 ] 
    then
        echo "Palindrome - Below is the reverse of your input"
        echo "~~~~~"
        echo $str1
        echo "~~~~~"
    
    else
        echo "Not a Palindrome - Below is the reverse of your input"
        echo "~~~~~"
        echo $str1
        echo "~~~~~"
    fi

    echo "Would you like to contine [Y/N]?"
    read proceedYN 
    
    if [ $proceedYN != "Y" ]
    then
        exit
    fi
done
    
