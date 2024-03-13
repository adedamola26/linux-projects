# Calculator

# Introduction

[_calculator.sh_](calculator.sh) is a bash script for performing arithmetic operations (including addition, subtraction, division and multiplication) on two numeric inputs. When run, it prompts the user to enter two numbers, one at a time. It verifies that each input is numeric before moving onto the next task in the script. After entering two valid inputs, it prompts the user to pick an operation to be performed. It also ensures the selected operation is valid (between '1' and '4') before moving on. If the selected operation is 'Division' and the second numeric input is '0', the script prints out an error message and terminates the session.
Key concepts used in this script are: variables, while loops, case statements and if statements.

# Prerequisites

For an Ubuntu distro you'll need to run the following

```
sudo apt install bc
```

`bc` allows the script to perform decimal arithmetic operations.
