#!/bin/bash

# ./special-parameter-script.sh {1..10}
echo $@

echo "$@"

# ./special-parameter-script.sh "file1 abc" "file2 xyz"
# touch $@ # it created 4 files file1, file2, abc, xyz
#touch "$@" # it created two files 'file1 abc', 'file2 xyz'
IFS=-
echo "$*" # 1-2-3-4-5-6-7-8-9-10
