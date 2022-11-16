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