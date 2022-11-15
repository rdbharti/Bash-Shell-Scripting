# Requesting User Input

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