# Brace Expansion
----
{} **String list** contains any set of individual characters or words.

String lists are useful for expanding out two moonths of the year, or for expanding out a set of usernames.

```bash
echo {a,20,barry} # a 20 barry 

echo {jan,feb,march,april} # jan feb march april
```

{a...b}**Range Lists** are useful for rapidly expanding out sequences of characters that follow a particular order. \
Like letter from A-Z or 1-100