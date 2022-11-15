# Requesting User Input

## Positional Parameter
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