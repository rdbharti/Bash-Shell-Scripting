# Processing Options and Reading Files
----

# While Loop
----

- While loop run a set of commands while a certain condition is true i.e return an exit code of zero (0).
- While loop start with reserved word **while** and end with reserved word **done**

```bash
read -p "Enter a number: " num

while [[ $num -gt 10 ]]; do
    echo "${num}"
    num=$(( $num - 1 ))
done

```