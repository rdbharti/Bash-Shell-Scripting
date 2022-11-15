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


# 1. META CHARACTERS AND TOKENISATION
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
   3. Compound commands can be written over multiple lines.
```bash
# start with if
if [[ 2 -gt 1 ]]; then
  echo "Hello World"
fi
end with fi
```

# 3. Expansion
----

There are 4 stages of Expansions
1. Stage 1: Brace Expansion
2. Stage 2: 
   1. Parameter Expansion
   2. Arithmetic Expansion
   3. Command substitution
   4. Tilde Expansion
3. Stage 3: Word Splitting
4. Stage 4: Globbing

Expansions are executed in Ascending stages i.e Stage 1 will be performed first then stage 2 and so on.

Example.
```bash
x=10
echo {1..$x} # Wrong; as Brace Expansion is performed before than parameter expansion
```

Expansion in the same stage are all given the same priority. And are simply performed in the order they are found on the command line when it is read from left to right.

```bash
echo $name has $(( 1 + 2 )) apples

# $name is expanded first;
# and the Arithmetic expansion

echo $name has {1..3} apples and $(( 5 + 2 )) oranges
# The brace expansion will happen first because its stage 1 expansion.
# Then $name
# Then Arithmetic
```

## 4. Word Splitting
----

- **Word Splittin** is a process which the shell performs to split the result of some unquoted expansions into separate words.
- Word splitting is only performed on the results of unquoted:
  - Parameter expansions
  - command substitutions
  - Arithmetic expansions
- The characters used to split words are governed by the IFS (Internal Field Separator) variable.
  - Space, tab, and newline

```bash
echo "${IFS}" # we get blank response as spaces, tab and newlines are not visible

echo "${IFS@Q}" # $' \t\n'
```

example word splitting

```bash
numbers="1 2 3 4 5"
touch $numbers # it will create 5 individual files

touch "$numbers" # it will create one file with file-name 12345
```

- This shows once the shell expanded the value of the variable numbers, it then split that value is seperate words based on the IFS characters.
- Each of these words i.e 1 2 3 4 5 where given as individual arguments to the touch command.
- When the variable was quoted **"$numbers"** , the shell did not perform word splitiing.


## 5. Globbing
----

- Originates from the "glob" program present in early versions of Bell Lab's Unix Operating sysstem from 1969-1975.
- The Glob Program would replace text containing special patent sysmbols with list of file names that matched those patterns.
- Globbing is used as a shortcut for listing the files that a command should operate on.
- Globbing is only performed on words (not operators)
- Globbing Patterns are words that contain unquoted Special Pattern Characters:
  - \* - match zero or more characters
  - ?  - match a single character 
  - []  - match any single characters palced inside the sq. bracket
- If the shell finds one of these characters unquoted inside a word, then it will perform globiing on that.

Example: \*

```bash
ls *.txt # list all .txt files
ls *.pdf # list all .pdf files
```

Example: ?

```bash
ls file?.txt # list all the file with name file1.txt file2.txt ... file9.txt

# note it will not list file.txt
```

Example: []

```bash
ls file[ab].txt # list files with name filea.txt fileb.txt

ls file[a-g].txt # will match a to g

ls file[0-9].txt # match 0 to 9

ls file[a-z0-9]
```

# Quote Removal
---- 
- Three types of Quotes
  - BackSlash
  - Single Quotes
  - Double Quotes

- Quote Removal : During the quote removal, the shell removes all the unquoted backslashes, single quote characters, and double quote characters that did NOT result from a shell expansion.