# Project: Read Command

## Read Command Project Brief


You are setting up a new switchboard for your company's phone system. You need to collect everyone’s current extension numbers and the pin code that they want to use when making calls.

Because there is no internal phone, you decide to write a bash script to request this information from each of your colleagues, and write it to a csv file to process later.
Your Task

Step 1: Firstly you can create a script called get_extensions.

In this script you will need to ask your user for 4 pieces of information using the read command.

    What is your first name?:

    What is your surname/family name?:

    What is your extension number?:

    What access code would you like to use when dialing in?:

You must advise the user that their extension number and access code must both be exactly 4 digits long.

**Note:** You should ensure that the extension and pin numbers are exactly 4 digits long. Check out the -N option in the read command documentation, which you can access by running the command help read

**Hint:** When entering private information like access codes, it is always better to prevent what the user types from appearing in the terminal.

**Hint:** Use the echo command to add blank lines where necessary to nicely format the user interface.


**Step 2:**

Using the echo command you then need to save this information to a file called extensions.csv in the following format:

firstname,lastname,extension,access

Saving the data like this will make it possible to open the data in Microsoft Excel or some other spreadsheet software for processing (try it out!)

**Hint:** Make sure that the script appends data to the extensions.csv file each time the script is run.


