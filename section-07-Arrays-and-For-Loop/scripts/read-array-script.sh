#!/bin/bash
 

# use days.txt contents to create an array of the contents
readarray day < days.txt
echo "${day[@]}"
echo "${!day[@]}" # 0 1 2 3 4 5 6
echo "${day[@]@Q}"


# Removing trailing new-line
echo ""
echo "Removing trailing new-line"
echo  ""
readarray -t day < days.txt
echo "${day[@]}"
echo "${!day[@]}" # 0 1 2 3 4 5 6
echo "${day[@]@Q}" # 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday' 'Thursday'

# Array From Output of a command
echo ""
echo "Array From Output of a command"
# create a dir and move to it; create 100 .txt files touch file{001..100}.txt
# create an array to store absolute path of these 100 files.

readarray -t files_with_path < <(ls ~/bash-course/abc/*)
echo "${files_with_path[@]}"
echo "${!files_with_path[@]}"
echo "${files_with_path[@]@Q}"