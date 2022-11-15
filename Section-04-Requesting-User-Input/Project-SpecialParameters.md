# Special Parameters - Project

**Special Parameter Project Brief**

**Scenario**
Reflecting back on your calculator project and having now learned about special parameters, you realise that special parameters would make for a much cleaner script than positional parameters.

One big benefit is that, because of their general nature, special parameters would allow your calculator to operate on infinite numbers, rather than being limited to using the number of parameters that you referenced in the script.

You would also be able to provide multiple different operators between each number with this solution.

You decide to modify your calculator script to use special parameters instead!


**Your Task**


Modify the calculator script that we created in the positional parameters project earlier, and replace the positional parameters with a special parameter that will do the same job on its own.

The resulting script should enable a user to run calculations using an unlimited amount of numbers and more than one operator, e.g:

./calculator 1 + 4 - 6.

**Hint 1:** You want to use the special parameter that will expand each position parameter to its own separate word.

**Hint 2:** Don't think too hard! It is possible to do this script with just 1 line of code!

```bash

x=$@
echo $(( $x ))
```