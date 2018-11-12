#!/bin/bash

# Loti Ibrahimi (20015453) | Internet of Things Year 3

# Script to sum numbers: 1 - num.
# num: The number the user enters (greater than 0).

num=0

until [ $num -gt 0 ]
do
    echo "-----------------------------------------------------------"
    echo "|~ This script will sum all numbers up to a given number ~|"
    echo "-----------------------------------------------------------"
    echo "Welcome! Please enter a number greater than 0:"
    read num

    if [ $num -lt 0 ]
    then 
        echo "Number needs to  be greater than 0!"
        echo "Try another number."
    fi
done

x=1
total=0

while [ $x -lt $num ]
do
    total=$(($total + $x))
    x=$(($x + 1))
done

echo "=================="
echo "Sum total: $total"
echo "=================="
echo "Job done!"
