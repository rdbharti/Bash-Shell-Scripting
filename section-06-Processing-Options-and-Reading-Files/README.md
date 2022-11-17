# Processing Options and Reading Files
----

# While Loop
----

- While loop run a set of commands while a certain condition is true i.e return an exit code of zero (0).
- While loop start with reserved word **while** and end with reserved word **done**

```bash
read -p "Enter a number: " num

while [[ $num -gt 10 ]]; do
    echo "${num}"
    num=$(( $num - 1 ))
done

```

# getopts: Handling Command Line Options
----
 - GetOps is used to allow your scripts to accepts options on the command line i.e get the options provided for the script
- getopts: we provide what are the possible options for the script are.
- getopts save the arguments provided with the options in a variable OPTARG

Example: Convert Fahrenheit to Celsius and wise versa.

```bash
#!/bin/bash

while getopts "c:f:" opt; do
    case $opt in 
	c)
		result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32 " | bc)
		;;
	f)
		result=$(echo "scale=2; ($OPTARG - 32) * (5/9) " | bc)
		;;
	*)
		echo "$opt"
		;;
   esac

   echo "$result"
done
```


# Iterate Over Files with read-while loops
----

- Iterate over a file line by line.
- Read-while loops are while loops that use the read command as their test command.

```bash
#!/bin/bash

# variable "line" is variable used by read to store input 
# $1 will be the file-name input given by user to read from
while read line; do
    echo "${line}"
done < "$1" 

```

- Now since we have each line of the file, we can use some data processing, string manipulation etc on them.

- In the above example the stdin is coming from a file (user defined).
- To make the stdin come from a command, we use process substitution. Process substitution is to represent running process as files and thus read data from them.

```bash
while read cmd; 
do
    echo "${cmd}"
done < <(ls $HOME) # Process Substitution

## Output

# bash-course
# Desktop
# Documents
# Downloads
# Music
# performance
# Pictures
# Public
# Templates
# Videos
```