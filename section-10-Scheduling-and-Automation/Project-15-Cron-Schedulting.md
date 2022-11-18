<div align='centre'><h1>Project: Cron scheduling</h1></div>

Cron scheduling Challenge Brief


**Scenario**

Keeping your system up to date is always a very important part of running a stable system.

In this project, we are going to create a script that will update your system everyday at midnight.

We are choosing midnight because this would hopefully be a time when your boss isn’t demanding you to be in the office, so this update can be done without causing disruption.

That said, feel free to customise the execution time for this script based on your daily schedule.
Your Task

**Step 1:** Create a script that will update and upgrade all the packages on your system every night at midnight.

**Hint:** The specific commands for this can be easily found with a quick Google
search (e.g “How to update packages on Ubuntu/Fedora/CentOS/YourDistroHere”).

**Hint:** The -y option in many package managers automatically answers “yes” to any ‘Are you sure?’ confirmation prompts, which comes in very handy for automation purposes.

**Step 2:**

Sometimes, updates require a reboot to take effect. Therefore, you need to also include in this script a command to reboot your system after the updates are done installing.

**Step 3:** Add an entry into an appropriate crontab file to run this script every day at midnight.

**Hint:** These commands require escalated privileges to run and so running the script from your normal user’s crontab is not the best way to do this. Do you remember how to modify the system-wide crontab? Review the lecture on cron directories if you are not sure.