#!/bin/bash
a=Hello
b=World
echo "${a} ${b}"
[[ $a = $b ]] ; echo $?

[[ 2 -eq 3 ]] ; echo $?

[[ $a != $b ]] ; echo $?

[[ -z $a ]] ; echo $? # 1 
[[ -z $c ]] ; echo $? # 0

[[ -n $a ]] ; echo $? # 0; True, String is non-empty
[[ -n $c ]] ; echo $? # 1; False, String is NOT non-empty

# FILE TEST OPERATORS
echo "File Test Operator"
[[ -e today.txt ]] ; echo $? # 1

touch today.txt
[[ -e today.txt ]] ; echo $? # 0

echo "isfile"
[[ -f today.txt ]] ; echo $? # 0 
[[ -d scripts ]] ; echo $? # 1

echo "exec permission"
[[ -x today.txt ]] ; echo $? # 1
[[ -x compare-script.sh ]] ; echo $? # 0  