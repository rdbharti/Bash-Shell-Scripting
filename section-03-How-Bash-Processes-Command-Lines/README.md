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

```bash
echo john & jane # & is used to run certain commands in the background
```

Since & has special meaning, the above command will not run the way we expect.

```bash
echo john \& jane # john & jane
```

Example-2
```bash
# The / itself is a special character
# It quotes the character which immediately follows
filepath=c:\Users\rdb\Documents
echo $filepath # c:UsersrdbDocuments

# One solution could be
filepath=c:\\Users\\rdb\\Documents
echo $filepath # c:\Users\rdb\Documents

# Single quotes preserve the literal meaning of every single character thet contain
filepath='c:\Users\rdb\Documents'

# file path to current user Documents path
# We need double quotes
filepath="c:\Users\\$USER\Documents"

```

**NOTE:** we can not use another single quote in a Single Quote, even if its preceded by a backslash


# META CHARACTERS AND TOKENISATION
----

## Step 1: Tokenisation

Metacharacters are like **punctuation**.

Token is a sequence of characters that is considered as a **single unit** by the shell.

#### Metacharacters: 
- | pipe
- & ampersand
- ; semi-colon
- () parentheses 
- <> less-greater than
- space, tab, and new-line

**Word** is a token that does not contain any unquoted metacharacters.

**Operator** is a token that contain at least one unquoted metacharacters.

### Two types of Operators
- 1. Control Operators
    - Newline
    - |
    - ||
    - &
    - &&
    - ; 
    - ;;
    - ;&
    - ;;&
    - |&
    - (
    - )

- 2. Redirection Operators
    - <
    - \>
    - <<
    - \>\>
    - <&
    - \>|
    - <<-
    - <\>
    - \>&

**Control operators** and **Redirectional operators** only matter if they are **unquoted**.

```bash 
echo $HOSTNAME > out.txt

```
In the above exanple there are 4 MetaCharaters: Spaces(3)+GreaterThanSign > (1)

After Identifying these metacharacters the shell will break this down into words and metacharacters.

echo does not contain unquoted unquoted metacharacter, therefore A WORD

echo = word

$name = word

out.txt = word

Then shell looks for sequence taht contains atleast one metacharacter and look to see if there is any operators within them.

Shell will see the redirection symbol > as an redirection operator.

# 2. Command Identification
----

### Types of commands
1. Simple Commands
   1. Each Simple Command is terminated by a Control Operator.
   2. If No Control Operator is used then default is new-line Control- operator.
```bash
echo 1 2 3

echo a b c ; echo 1 2 3
```
2. Compound Commands
   1. Commpund Commands are eseentially bash's programming contructs
   2. Ecah compound commannd starts with a **reserved word** and is terminated by a corrosponding **reserved word**.
```bash
# start with if
if [[ 2 -gt 1 ]]; then
  echo "Hello World"
fi
end with fi
```
    3. Compound commands can be written over multiple lines.

