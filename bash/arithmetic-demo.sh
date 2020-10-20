#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Please enter first number" firstnum
read -p "Please enter second number" secondnum
read -p "Please enter third number" thirdnum

sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum*secondnum*thirdnum))
fpproduct=$(awk "BEGIN{printf \"%.2f\", $firstnum*$secondnum*$thirdnum}")

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum multiply by $secondnum multiply by $thirdnum is $product
  - More precisely, it is $fpproduct
EOF
