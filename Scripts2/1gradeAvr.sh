#!/bin/bash

# Loti Ibrahimi (20015453) | Internet of Things Year 3

# *** Incomplete ***
# Write a shell script to accept 12 grades and display average. 
# 1. Average for semester 1 (first six grades)
# 2. Average for semester 2 (second six grades)
# The above are populated by the user. 
# 3. Calc. the mx and min values in the array.

# [validate to make sure number is valid (not less than 0 or greater than 100)]


echo "--------------------------------------------------------"
echo "|Shell Script to display average grades for Sem1 & Sem2|"
echo "--------------------------------------------------------"

Grades=()
input=0

echo "First 6 grades for Sem 1, followed by 6 from Sem 2"

while [ $input -lt 12 ] 
do
    for [ $input -lt 6 ]
	echo "Semester 1"
	echo "~~~~~~~~~~"
    do
        echo "Enter grade:"
        read grade1
        Grades[ $input ]=$grade1
        input=$(($input+1))
		
	echo $grade1
    
    elif [ $input -gt 5 ]
	echo "Semester 2"
	echo "----------"
    then 
        echo "Enter grade:"
        read grade2
        Grades[ $input ]=$grade2
        input=$(($input+1))
		
	echo $grade2
    fi
done 

    

# avg = total_grades/mods
# print("Average of your, $mods grades for Semester 1  is: $avg")
