# Structure of Bash Script
----
## 1. Core Components

1. #! => Shabang
2. /bin/bash => path to interpreter
3. /bin/bash/python3 => python interpreter

A script file can be identified by using command

```bash
file <file-name>

file my-first-bash-script.sh
# my-first-script.sh: Bourne-Again shell script, ASCII text executable
```

4. echo => print on screen
    eg: echo "This is my First Script"

5. exit statement tell the shell that the script has ended.

Different exit codes tell wheather the code has exit successfullt or unsuccessfully

- exit code ranges 0-255
- exit code 0 : Successful
- exit code non-zero: Something went wrong

[Refer exit codes](https://tldp.org/LDP/abs/html/exitcodes.html)

6. make the script-file executable
```bash
chmod +x <file-name>
```
## SCRIPT
```bash
#!/bin/bash

echo "This is my First Script"
exit 0 # exit-code

```

----
## 2. Professional Component

1. \# Comment
2. \# Author: <Full-Name>
3. \# Date Created: <Date>
4. \# Last Modified: <Date>

5. \# Description
   \# Prints Text on Screen

6. \# Usage
   \# our_first_script