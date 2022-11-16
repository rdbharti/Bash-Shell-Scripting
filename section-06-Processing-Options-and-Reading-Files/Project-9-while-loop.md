# Project: While loops

### While Loops Project Brief

**Scenario**

We want to build a timer that counts down from the specified number provided by the user.

The user will use command line options to provide a number of minutes, and a number of seconds for the timer.

The script will then need to compute the total number of seconds, and count down, echoing out the number of seconds left until 0.

**Your Task**

**Step 1:** You need to add getopts into your script to provide two options to your user.

The script should accept a -m option minutes and a -s option for seconds.

You will also need to use arithmetic expansion to calculate the total number of seconds, and save this value into a variable called total_seconds

**Step 2:** You then need to create a while loop that prints out the total number of seconds remaining, once per second, until there are no seconds left.

**Note:** You can use the command “sleep 1s” to make your loop pause for 1 second before looping again.

**Step 3:** Finally, when the script ends, make sure to echo out the statement “Time’s Up!”

```bash
total_seconds=0
while getopts "m:s:" opt; do
case "$opt" in
    m)
        total_seconds=$(echo "($OPTARG * 60) + $total_seconds " | bc)
    ;;
    s)
        total_seconds=$(echo "$OPTARG + $total_seconds " | bc)
    ;;
    *)
    ;;
esac
done

#echo "Total Seconds: $total_seconds"

while [[ $total_seconds -gt 0 ]]; do
    clear
    echo "Time remaining: ${total_seconds}"
    total_seconds=$(( $total_seconds - 1 ))
    sleep 1s
done

clear
echo "Times Up !!"
```