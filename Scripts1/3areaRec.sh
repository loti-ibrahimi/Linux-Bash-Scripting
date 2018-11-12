#!/bin/bash

# Loti Ibrahimi (20015453) | Internet of Things Year 3

# Finding the Area of a Rectangle given width(w) and length(l).
# Suitable for any units. In this script, I've added a 'cm' tag to indicate its in centimeters.

w=0
l=0

echo "----------------------------------------------------------------"
echo "|~ Rectangle Area (centimeters), given width(w) and length(l) ~|"
echo "----------------------------------------------------------------"

# Read width(w) from the user input.
until [ $w -gt 0 ]
do
    echo "Enter width of Rectangle (cm):"
    read w

# Check if enterered width is valid (i.e not less than 0)
    if [ $w -le 0 ]
    then
        echo "Please enter a valid width!"
    fi
done 


# Read length(l) from the user input.
until [ $l -gt 0 ]
do 
    echo "Enter length of Rectangle (cm):"
    read l

# Check if entered length is valid (i.e not less than 0)
    if [ $l -lt 1 ] 
    then
        echo "Please enter a valid length!"
    fi
done


# Rectangle Area = width(w) x length(l). '|bc' carries out the calculation.
area=$(echo "$w * $l"|bc)
echo ""
echo "Area of the rectangle given:
      - Width: $w cm
      - Length: $l cm

      = $area sqaure centimetre"
