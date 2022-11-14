# Parameters Expansion tricks.
----

## Modifying Cases
```bash
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
```

## Length
```bash
name="Rana Durlabh"
echo "${#name}" #12
```

## Slicing

### ${parameter:offset:length}

```bash
numbers=0123456789

echo "${numbers:0:7}" # 0123456
echo "${numbers:1:7}" # 1234567
echo "${numbers:3}" # 3456789; if we dont put length then it will print from off to end of the string

echo "${numbers:3:}" # If we put ':' at the end bash will take length as zero 0

echo "${numbers: -3:2}" # 78; we need to put space infront of negative number, it will offset from end of the sring
echo "${numbers: -3}" # 789; from offset till the end of string
```
