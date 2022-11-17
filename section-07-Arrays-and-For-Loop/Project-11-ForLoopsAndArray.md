# For loops + Arrays project
### For Loops + Arrays Project Brief


**Scenario**

You have been provided with a text file called urls.txt which contains a list of website URLs. You can find this file in the resources section for this project.

You have been asked to obtain the header information received when trying to access the homepage for all these sites, and store these headers in individual text files.
Your Task

**Step 1:** Using the readarray command, create an array of urls from the provided urls.txt file

**Step 2:** Using a for loop iterate over this array utilising the curl command with the --head option to get the headers for each URL.

**Step 3:** Redirect the output from each curl command to a new text file for each url.

The name of the text files should be based on the url.

**E.g.**

www.facebook.com -> facebook.txt

www.google.com > google.txt

www.thingy.net > thing.txt

**Hint:** Check out the cut command as a way to slice out the appropriate part of the
url to create the filenames.

- **Extra Guidance**

  -    For this project, you will need to do some independent research using the man command to learn how the cut and curl commands work. Have fun!

  -    When using the cut command, check out the -d and -f options.

  -    You will need to pipe to the cut command from the echo command.