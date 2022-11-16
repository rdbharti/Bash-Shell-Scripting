#!/bin/bash
a=Hello
b=World
echo "${a} ${b}"
[[ $a = $b ]] ; echo $?

[[ 2 -eq 3 ]] ; echo $?
