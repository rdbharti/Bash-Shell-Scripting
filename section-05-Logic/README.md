# Logic
----

- List: When you put one or more commands on a given line.
- List Operators: Type of Control Operators that enable us to create lists of commands that operate in different ways.
  - 1. & : sends the command previous to & to background. Its asynchronous.

    ```bash
        echo 123& echo 234 & echo 456 
        # [9] 3157 - process id
        # [9][10] 3158 - process id
        # [9]456 - output
        # [9]234 - output
        # [9]123 - output
 
    ```
  - 2. ; : runs command sequentially i.e one after another
    ```bash
    echo 123 ; echo 234 ; echo 456 
    # 123
    # 234
    # 456 
    ```
  - 3. && - Its the AND Operator. The second command runs only if the first command executed successfully
  - 4. \|\| - Its the OR Operator. The second command runs only if the first command execution failed.

```bash
echo 123 && echo 234 # 123 \n 234

echo 123 || echo 567 # 123
```


# Test Commannds and Conditional Operators
----

- Test Command is a command that can be used in bash to compare different pieces of information.
- It basically allow to create logical test in bash that can either be true or flase.
- If a test is evaluated to be true, the test will return an exit status of zero (0).
- If a test is evaluated to be false, the test will return an exit status of one (1).
- test command is written inside sq. bracket []. There need to be space after [ and befor ]
- -eq is used to compare equality
- -ne = not equal
- $? is used to check exit status of last command

```bash
[ 2 -eq 2 ] ; echo $? # exit code 0 true
[ 2 -eq 3 ] ; echo $? # exit code 1 false
[ 2 -ne 3 ] ; echo $? # exit code 0 true
[ 2 -ne 3 ] ; echo $? # exit code 1 false 
```
- Integer test commands (NOT for DECIMALS)
  - -eq : equals
  - -ne : not-equals
  - -lt : less-than
  - -gt : greater-than
  - -geq : greater-than-or-equal-to
  - -leq : less-than-or-equal-to


- String test operator
  - = : equals
  - != : not-equals
  - -z : is String Empty
  - -n : is String non-empty

```bash
a=Hello
b=World
echo "${a} ${b}"
[[ $a = $b ]] ; echo $? # 1 ; False

[[ $a != $b ]] ; echo $? # 0 ; True

[[ -z $a ]] ; echo $? # 1; String NOT empty = False 
[[ -z $c ]] ; echo $? # 0 ; String Empty = True

[[ -n $a ]] ; echo $? # 0; True, String is non-empty
[[ -n $c ]] ; echo $? # 1; False, String is NOT non-empty
```

- File Test Operators
  - -e : If file exists
  - -f : isFile and exists; use to check if something is file or directory?
  - -d : isDirectory and exists
  - -x : hasExecutionPermission and exists


```bash
[[ -e today.txt ]] ; echo $? # 1 file does not exist
touch today.txt
[[ -e today.txt ]] ; echo $? # 0 file exists

[[ -f today.txt ]] ; echo $? # 0 
[[ -d scripts ]] ; echo $? # 0

[[ -x today.txt ]] ; echo $? # 1
[[ -x compare-script.sh ]] ; echo $? # 0 
```


# IF STATEMENT
----

- Starts with "if" and end with "fi"
- IF statement work by checking the exit status of a command.

```bash
#!/bin/bash

if [[ 2 -gt 1 ]]; then # The semi-colon indicates end of condition command
    echo "Test Passed"
fi # Test Passed

if [[ 2 -lt 1 ]]; then
    echo "-lt Test Passed"
else
    echo "-lt test failed"
fi # -lt test failed
```

- elif allows to check another condition if previous condition failed.

```bash
# ELIF
if [[ 2 -lt 1 ]]; then
    echo "-lt Test Passed"
elif [[ 1 -eq 1 ]]; then
    echo "-eq Test Passed"
else
    echo "-lt test failed"
fi # -eq Test Passed

```

- You Cannot put an elif after an else
- There is no limit on the amount of elif statement you can have.
- You can put an if statement inside other if statement (nesting).