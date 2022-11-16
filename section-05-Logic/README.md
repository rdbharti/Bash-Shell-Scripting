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