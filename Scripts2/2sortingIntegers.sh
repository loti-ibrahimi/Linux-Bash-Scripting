#!/bin/bash

# Loti Ibrahimi (20015453) | Internet of Things Year 3

# Shell Script that accepts 10 integers from a user into an array.
# The array is then sorted in both ascending and descending order.

proceedYN='Y'

echo " Enter 10 integers: "
echo "<------------------>"
for (( i=0; i<10; i++ ))
do
    echo Integer `expr $i + 1`:
    read num[$i]
done

for (( i=0; i<10; i++ ))
do
    for (( n=`expr $i + 1`; n<10; n++ ))
    do
        if [ ${num[$i]} -gt ${num[$n]} ]
        then
            x=${num[$i]}
            num[$i]=${num[$n]}
            num[$n]=$x
        fi
    done
done

while [ $proceedYN = "Y" ]
do
    echo "============================"
    echo " 1.Ascending | 2.Descending "
    echo "============================"
    echo "<Please select an option>"
    read option

    if [ $option = 1 ]
    then
        echo "Ascending Order:"
        echo "----------------"
        for (( i=0; i<10; i++ ))
        do
            echo ${num[$i]}
        done

    elif [ $option = 2 ]
    then
        echo "Descending Order:"
        echo "-----------------"
        for (( i=10; i>0; i-- ))
        do
            echo ${num[`expr $i - 1`]}
        done
    else
            echo "!Error - Invalid Choice!."
    fi
    
    echo "Do you wish to continue [Y/N]?"
    read proceedYN

    if [ $proceedYN != "Y" ]
    then 
        exit
    fi
done


 



