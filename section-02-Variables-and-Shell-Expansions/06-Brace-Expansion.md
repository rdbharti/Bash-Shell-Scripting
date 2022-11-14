# Brace Expansion
----
{} **String list** contains any set of individual characters or words.

String lists are useful for expanding out two moonths of the year, or for expanding out a set of usernames.

```bash
echo {a,20,barry} # a 20 barry 

echo {jan,feb,march,april} # jan feb march april
```

{a..b} **Range Lists** are useful for rapidly expanding out sequences of characters that follow a particular order. \
Like letter from A-Z or 1-100

```bash
echo {1..20} # 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20

echo {A..Z} # A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

# Reverse
echo {10..5} # 10 9 8 7 6 5
```

We can create a range with steps \
**{initial..final..step}**

```bash
echo {1..20..3} # 1 4 7 10 13 16 19
```

