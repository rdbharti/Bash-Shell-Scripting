# ARRAYS & FOR LOOP
----

- Variables can be used to store one piece of data at a time.
- Arrays can store multiple different values at the same time.
- Syntax: variable=(val1 val2 val3)
- Each Value separated by a space.
- Indexes start from zero 0.
- Accessing Array: ${array_variable[index]} //without index number will return value at index 0.
- Accessing Whole Array: $"{array_variable[@]}"

```bash
# Array of numbers

numbers=(1 2 3 4 5 6 7)
echo "${numbers[0]}" # 1
echo "${numbers[1]}" # 2
echo "${numbers[2]}" # 3

# Accessing whole array
echo "${numbers[@]}" # 1 2 3 4 5 6 7
```

- Array Manipulation using parameter slicing
- :offset :length

```bash
# Parameter Slicing
echo ""
echo "Parameter Slicing"
echo "${numbers[@]:2}" # 3 4 5 6 7
echo "${numbers[@]:2:2}" # 3 4
```

- Adding an element at the end of the array

```bash
# Adding a number at the end of the array
echo "Adding a number at the end of the array"
numbers+=(5) # Bracket () indicate an array
echo "${numbers[@]}" # 1 2 3 4 5 6 7 5
```

- Delete an element Array: unset arraY_variable[index]
- This not only removes the elemnt at the specified index, it removes the index also.

**NOTE** To view the index number: !array_variable[@]

```bash
 Delete an element Array
echo ""
echo "Delete an element Array"

unset numbers[2]
echo "${numbers[@]}" # 1 2 4 5 6 7 5
echo "Index: ${!numbers[@]}" # Index: 0 1 3 4 5 6 7 # index 2 removed

```

- Change an element at an index
  
```bash

# Change and element 
echo ""
echo "Change and element"
numbers[4]=1233
echo "${numbers[@]}" # 1 2 4 1233 6 7 5


```

# READARRAY COMMAND
----

- The readarray command converts whateever it reads on its standard input stream into an array
- syntax: readarray array_name < stdin
- each element is created at a separate index
- when the array element is created its created with trailing new-line or space.
-  
```bash

readarray day < days.txt
echo "${day[@]}"
echo "${!day[@]}" # 0 1 2 3 4 5 6

echo "${day[@]@Q}" # $'Monday\n' $'Tuesday\n' $'Wednesday\n' $'Thursday\n' $'Friday\n' $'Saturday\n' $'Thursday\n'
```
- To remove the trailing newline or space, we use -t flag with readarray. readarray -t

```bash

readarray -t day < days.txt

echo "${day[@]@Q}" # 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday' 'Thursday'

```

- Create Array from output of a command

```bash

# Array From Output of a command
echo ""
echo "Array From Output of a command"
# create a dir and move to it; create 100 .txt files touch file{001..100}.txt
# create an array to store absolute path of these 100 files.

readarray -t files_with_path < <(ls ~/bash-course/abc/*)
echo "${files_with_path[@]}"
echo "${!files_with_path[@]}"
echo "${files_with_path[@]@Q}"

```