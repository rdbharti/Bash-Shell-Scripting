# How Bash Processes Command Lines
----
1. Toeknisation
2. Command Identification
3. Shell Expansions
4. Quote Removal
5. Redirections

 When the shell is done with these 5 Steps, it will then execute the result.

 # Quoting
 ----
 Quoting is about **Removing Special Meanings**
- Three types of quoting.
  - backslases (\\)
  - Single Quote ' '
  - Double Quote " "

1. Backslash (\\):
  - Removes special meaning from **next** character
2. Single Quotes (' '):
  - Removes special meaning from all the characters inside the quote.
3. Double Quotes  (" "):
  - Removes special meaning from **all, except** dollar sign **($)** and backticks **(`)**.