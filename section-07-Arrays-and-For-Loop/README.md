# ARRAYS & FOR LOOP
----

- Variables can be used to store one piece of data at a time.
- Arrays can store multiple different values at the same time.
- Syntax: variable=(val1 val2 val3)
- Each Value separated by a space.
- Indexes start from zero 0.
- Accessing Array: ${variable[index]} //without index number will return value at index 0.
- Accessing Whole Array: $"{variable[@]}"

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