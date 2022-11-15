# Requesting User Input

# 1. Positional Parameter
----
- Command line arguments are information that you give to your script from your command line. Each argument is seperated by a space
- Positional parameters are parameters set by the shell to store the value of each of these command line arguments.
- You can't save data in positional parameters manually
- you can refer to values held by positional parameters using parameter expansion.

- Here we are trying to pass in paramaeters with the script. Like 
```bash
# positional-parameter-script positional-Para1 positional-Para2
positional-parameter-script john $HOME
```
Positional Parameter 1 will store John
Positional Parameter 2 will store $HOME
Positional Parameter 2 will store Green 

```bash
#!/bin/bash

echo "My name is $1"
echo "my home directory is $2"
echo "my favourite color is $3"

# ./positional-parameter-script John $HOME Green
```
- Numeric Parameter are reserved in SHELL
  - 1=John NOT ALLOWED
- There is no limit of positional parameter.
- In double digit parameter we need to use ${} parameter expansion.
```bash
echo "The 10th argument is ${10}"
```


# 2. Special Parameters
----
### $# and $0

- Parameters that bash gives special meaning.
- We can't change value of special parameter.
- Value of special parameter is calculated for us based on our currennt script.

- $# parameter expands to the number of positional parameters that have been provided i.e total number of arguments provided.
- $0 parameter expands to the name of current shell, if executed from shell; If executed from script, it will return name of the script.

```bash
./script.sh a b c d

# echo $# = 4
# echo $0 = ./script.sh
```

Example:
```bash

if [[ $# -ne 2]]; then
    echo "You didn't enter exactly 2 parameters"
    echo "Usage: $0 <file1> <file2>"
    exit 1 # non-zero; therefor exit with error
fi

```

### $@ and $*

- $@ allows us to access all the positional parametes at once that are passed to our script and it separated each paramater with a space.
- "$@": each parameter is wrapped with double quote. It preventes word spliting from happening eg. "$1" "$2"..."$N"

```bash
# filename: special-parameter-script.sh
#!/bin/bash

# ./special-parameter-script.sh {1..10}
echo $@

echo "$@"

# ./special-parameter-script.sh "file1 abc" "file2 xyz"
# touch $@ # it created 4 files file1, file2, abc, xyz

touch "$@" # it created two files 'file1 abc', 'file2 xyz'
```

- $*: unquoted $* is exactly same as unquoted $@
- "$*": It will place the first character of the IFS variable between each positional parameter.
  - By default first character of IFS is space.
  - IFS variable can be changed; IFS=, 
  - $1,$2,$3,...,$N

```bash
IFS=-
echo "$*" # 1-2-3-4-5-6-7-8-9-10
```