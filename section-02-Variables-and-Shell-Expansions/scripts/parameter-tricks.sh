#!/bin/bash

name="RaNa DuRlAbH"

# Modifying cases
echo "${name}" # RaNa DuRlAbH

echo "${name,}" # raNa DuRlAbH = Changes first letter to lowercase

echo "${name}" # RaNa DuRlAbH; it still has the original value

echo "${name,,}" # rana durlabh = All Lower Case
l_name="${name,,}" # Saving name in lower case in varibale l_name

echo "${l_name^}" # Rana durlabh = ^ symbol converts 1st letter to upperCase
echo "${l_name^^}" # RANA DURLABH = ^^ symbol converts all letters to upperCase