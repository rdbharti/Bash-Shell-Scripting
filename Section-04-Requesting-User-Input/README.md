# Requesting User Input

# 1. Positional Parameter
----
- Command line arguments are information that you give to your script from your command line. Each argument is seperated by a space
- Positional parameters are parameters set by the shell to store the value of each of these command line arguments.
- You can't save data in positional parameters manually
- you can refer to values held by positional parameters using parameter expansion.

- Here we are trying to pass in paramaeters with the script. Like 
```bash
# positional-parameter-script positional-Para1 positional-Para2
positional-parameter-script john $HOME
```
Positional Parameter 1 will store John
Positional Parameter 2 will store $HOME
Positional Parameter 2 will store Green 

```bash
#!/bin/bash

echo "My name is $1"
echo "my home directory is $2"
echo "my favourite color is $3"

# ./positional-parameter-script John $HOME Green
```
- Numeric Parameter are reserved in SHELL
  - 1=John NOT ALLOWED
- There is no limit of positional parameter.
- In double digit parameter we need to use ${} parameter expansion.
```bash
echo "The 10th argument is ${10}"
```


# 2. Special Parameters
----
### $# and $0

- Parameters that bash gives special meaning.
- We can't change value of special parameter.
- Value of special parameter is calculated for us based on our currennt script.

- $# parameter expands to the number of positional parameters that have been provided i.e total number of arguments provided.
- $0 parameter expands to the name of current shell, if executed from shell; If executed from script, it will return name of the script.

```bash
./script.sh a b c d

# echo $# = 4
# echo $0 = ./script.sh
```

Example:
```bash

if [[ $# -ne 2]]; then
    echo "You didn't enter exactly 2 parameters"
    echo "Usage: $0 <file1> <file2>"
    exit 1 # non-zero; therefor exit with error
fi

```

### $@ and $*

- $@ allows us to access all the positional parametes at once that are passed to our script and it separated each paramater with a space.
- "$@": each parameter is wrapped with double quote. It preventes word spliting from happening eg. "$1" "$2"..."$N"

```bash
# filename: special-parameter-script.sh
#!/bin/bash

# ./special-parameter-script.sh {1..10}
echo $@

echo "$@"

# ./special-parameter-script.sh "file1 abc" "file2 xyz"
# touch $@ # it created 4 files file1, file2, abc, xyz

touch "$@" # it created two files 'file1 abc', 'file2 xyz'
```

- $*: unquoted $* is exactly same as unquoted $@
- "$*": It will place the first character of the IFS variable between each positional parameter.
  - By default first character of IFS is space.
  - IFS variable can be changed; IFS=, 
  - $1,$2,$3,...,$N

```bash
IFS=-
echo "$*" # 1-2-3-4-5-6-7-8-9-10
```

# The Read Command
----

- It ask the user to provide specific input to the script.
- The input from user is saved in the REPLY variable.

```bash

~/$ read
hello # input

~/$ echo $REPLY # hello
```

- Save input in custom variables

```bash
~/$ read input1 input2
Hello World # Inputs are seperated by space

~/$ echo $input1 # hello

~/$ echo $input2 # world
```
- -p flag is used to prompt the user

example:

```bash
read -p "Your Name: " name
read -p "Your Age: " age 
read -p "Your Town: " town

clear

echo "My name is ${name}"
echo "I am ${age}"
echo "I am from ${town}"
```

- Timeout flag (-t time in seconds)

```bash
read -t 5 -p "Your Name: " name

read -t 5 -p "Your Age: " age
 
read -t 5 -p "Your Town: " town
```

- Secret flag (-s); It hides display of input from console

```bash
read -s -t 5 -p "Your Name: " name

read -s -t 5 -p "Your Age: " age
 
read -s -t 5 -p "Your Town: " town
```


# Select Command
----

- It presents the user with menu containing various options and user can select from those options.
- Synatax: select nameOfVariableToSaveUserResponse
- if no variable is given, then users' response is saved in default variable RESPONSE

```bash
select day in mon tue wed thu fri sat sun;
do
echo "The day selected is ${day}"
done 
```
- The above example wil run in a loop and will ask for an input after every execution.
- To rectify this issue, we need to add a break command to get out of the loop.

```bash
select day in mon tue wed thu fri sat sun;
do
echo "The day selected is ${day}"
break
done 
```

- PS3 shell variable controls the prompt String of the select command.

```bash
PS3="What is the day of the week: "
select day in mon tue wed thu fri sat sun;
do
echo "The day selected is ${day}"
break
done 
```