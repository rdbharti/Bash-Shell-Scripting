# Arithmetic Expansion
----

### Syntax: $((expression))

```bash
echo $(( 4 + 2)) # 6
```

Using Variables
```bash
x=8
y=9

echo $(( $x + $y )) # 17
```
We can use Variables Name without $ sign

```bash
x=8
y=9

echo $(( x + y )) # 17
```


