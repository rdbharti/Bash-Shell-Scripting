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