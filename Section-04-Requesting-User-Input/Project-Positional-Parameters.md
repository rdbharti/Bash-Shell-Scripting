# Project: Positional Parameters
## Positional Parameters Project Brief

**Please view this article in full-screen mode, or download the attached PDF
Scenario**

You have been asked to create a bash script that will serve as a basic calculator and allow you to perform simple arithmetic calculations from the command line.

The calculator needs to be able to do addition, subtraction, multiplication and division, on a maximum of 9 numbers.

The first command line argument given to the script will contain the operation that is to be performed on the numbers (either + or -).

The operation chosen will be applied to all the numbers.

For example, if the first command line argument is “+”, then all the other command line arguments will be added together. If the user picks “-”, then all the other command line arguments will be subtracted from each other, and so on.

Your script needs to be able to accept the operation as the first command line argument, and also accept up to 9 numbers (for a total of 10 command line arguments).

**Hint 1:** You will need to use the first positional parameter, which is the operator, multiple times

**Hint 2:** You can use the echo command to display the result of the arithmetic expansion

**Hint 3:**
+ and - , like all binary operators, require there to be an operand before and after the operator. “1 +” and “2 -” on their own don’t make any sense.

Given this, what would you do if the user only wanted to add 4 numbers, for example?

To get around this issue, consider how you might use a parameter expansion trick like ${parameter:-word} to substitute a default value if a given positional parameter is not provided.

You can refer to the GNU Bash Manual for clarity on the usage of this particular parameter expansion trick: https://www.gnu.org/software/bash/manual/bash.html#Shell-Expansions


```bash
#!/bin/bash
#!/bin/bash
# Author: R D Bharti
# Date Created: 15/11/2022
# Last Modified: 15/11/2022

# Description
# a basic calculator and allow you to perform simple arithmetic calculations from the command line
#The first command line argument given to the script will contain the operation that is to be performed on the numbers (either + or -).

# Usage
# positional-parameter-Project

operation=$1
num1=$2
num2=$3
num3=$4
num4=$5
num5=$6
num6=$7
num7=$8
num8=$9
num9=${10}

# v1: The below script will not funtion correctly if any of the argument is empty
# echo "$num1 $operation $num2 $operation $num3 $operation $num4 $operation $num5 $operation $num6 $operation $num7 $operation $num8 $operation $num9" | bc

# v1.1: To check if parameter is empty; if empty, put default value ${parameter:-defaultValue}

# echo "${num1:-0} $operation ${num2:-0} $operation ${num3:-0} $operation ${num4:-0} $operation ${num5:-0} $operation ${num6:-0} $operation ${num7:-0} $operation ${num8:-0} $operation ${num9:-0}" | bc

echo $(( ${num1:-0} $operation ${num2:-0} $operation ${num3:-0} $operation ${num4:-0} $operation ${num5:-0} $operation ${num6:-0} $operation ${num7:-0} $operation ${num8:-0} $operation ${num9:-0} ))
```