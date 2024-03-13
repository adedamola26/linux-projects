#! /bin/bash

# A calulator script for performing addition, subtraction,
# division or multiplication on two numeric inputs.


echo "Enter first number:"
read num1

# Ensure num1 is numeric before moving on
while ! [[ "$num1" =~ ^[0-9]+(\.[0-9]+)?$ ]]
do
    echo "Error: First number is not a valid number."
    echo "Enter first number:"
    read num1
done

echo -e "\nEnter second number:"
read num2

# Ensure num2 is numeric before moving on
while ! [[ "$num2" =~ ^[0-9]+(\.[0-9]+)?$ ]]
do
    echo "Error: Second number is not a valid number."
    echo "Enter second number:"
    read num2
done

echo -e "\nYou have entered $num1 and $num2."

echo -e "\nPick an operation to perform:"
cat << eof
1 - Addition
2 - Subtraction
3 - Multiplication
4 - Division
eof

read operation

# Ensure selection is a number between 1 and 4 before moving on
while ! [[ "$operation" =~ ^[1-4]$ ]]
do
    echo "Invalid operation! Please enter a number between 1 and 4."
    read operation
done

echo ""

case $operation in
    1) echo "$num1 + $num2 = $(echo "scale=2; $num1 + $num2" | bc)";;
    2) echo "$num1 - $num2 = $(echo "scale=2; $num1 - $num2" | bc)";;
    3) echo "$num1 * $num2 = $(echo "scale=2; $num1 * $num2" | bc)";;
    4) if [ $num2 -eq 0 ]
       then
           echo "Error: Division by zero is not allowed."
       else
           echo "$num1 / $num2 = $(echo "scale=2; $num1 / $num2" | bc)"
       fi
esac