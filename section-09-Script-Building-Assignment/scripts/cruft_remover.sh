#!/bin/bash

read -p "Directory Name: " dir_name
read -p "Days unmodified: " days

readarray -t toDdel < <(find / -type d -name "$dir_name" -mtime "$days" 2>/dev/null)

for dir in "${toDdel[@]}"
do
    if [[ -e "$dir" ]]; then
        rm -ri "${dir}"
        if [[ $? -eq 0 ]]; then
            echo "Deleted $dir"
        else
            echo "Error Deleting: $dir"
        fi
    fi
done