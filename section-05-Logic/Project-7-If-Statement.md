# Project: If Statements
### If Statement Project Brief


**Scenario**

It’s one of those days. You’re having problems with a server, and you need to log the memory usage to check for performance issues.

You need to store this log in a specific location, and you are going to be deleting this log periodically.

Your script needs to check if the log and append to it if it does so you don’t lose existing data. If the log does not exist, then the script must create it along with its containing folder, if necessary.

Your Task

**Step 1:** Create a bash script called memory_logger

**Step 2:** Create an if statement

    - This will check if the folder $HOME/performance exists and if it doesn’t then create it

    - If the folder exists then echo out a statement confirming it exists

**Hint:** Use the mkdir command to create the folder if it does not exist

**Step 3:** After your if statement

Append the output of the free command to $HOME/performance/memory.log

**Hint:** The free command in Linux outputs the current memory usage of the computer

```bash
folder="${HOME}/performance"
if [[ -d $folder ]]; then
    echo "${folder} exists"
else
    mkdir $folder 
    if [[ $? -eq 0 ]]; then
        echo "${folder} created"
    fi
fi

free >> $folder/memory.log ; echo
```