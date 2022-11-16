# Project: Select Command
### Select Command Project Brief

You have realised that there is some additional information that you need from your users to be able to effectively set up your switchboard.

Firstly, you need to provide your users with a new phone to work with the new system and you would like to give your users the option to have either a handheld phone or a headset phone.

Secondly you need to know which department they are in within the company.

**Your Task**

**Step 1:** You will build on the get_extensions script that you created previously to do this (if you’ve forgotten, please see the project for the read command)

A copy of the official solution for the read command project has been placed in the resources section of this video, so begin by downloading that, renaming it appropriately, and opening it in nano.

After asking the user for their last name, you will need to add in two select commands.

**Step 2:** Your first select command will set a variable for the type of phone with the options “headset” and “handheld” given to the user.

Use the PS3 shell variable to give the user an appropriate prompt.

You will then echo out to the user their selection.

**Step 3:** Then you need to add in another select command to ask the user for their department. Give the user the options of: “finance”, “sales”, “customer service”, and “engineering”.

Again, use the PS3 shell variable to give the user an appropriate prompt, and echo out their selection to them.

**Step 4:** Finally you need to modify the echo command at the end of the script to make sure that the new data is written to the data file.

**Hint:** Remember to use break to end each select command.

```bash
read -p "Your Name: " name
read -p "Your Surname: " surname

PS3="What is your Preference: "
select phone_type in headset handheld;
do
#echo "Your preference is ${phone_type}"
break
done

PS3="Your Department: "
select dept in Finance sales "customer service" engineering;
do
#echo "Your Department is ${dept}"
break
done

read -N 4 -p "Your Extension Number: " ext_number
echo ""
read -s -N 4 -p "Your access-code: " access_code

clear

echo "${name},${surname},${ext_number},${access_code},${phone_type},${dept}" >> extension.csv
```