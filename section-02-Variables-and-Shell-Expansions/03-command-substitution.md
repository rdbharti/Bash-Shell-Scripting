# Command Substitution
----
It allows to save the output of a command to a variable

### Syntax: $(command)
```bash
#!/bin/bash

# Save the output of the 'date' command to variable 'time'
time="$(date +%H:%M:%S)"
echo "Hello $USER, the time tight now is ${time}" # Hello ubuntu, the time tight now is 12:11:41

# Its not necessary to save output of cammand to variable, we can directly use the command inside another command
echo "Hello $USER, the time tight now is $(date +%H:%M:%S)" # Hello ubuntu, the time tight now is 12:11:41
```