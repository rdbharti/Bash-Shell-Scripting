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
echo $(( x - y )) # 1
echo $(( x * y )) # 72
echo $(( x / y )) # 0 

```

Multiple Operators. It follows BODMAS
```bash
echo "Multiple Operators"

echo $(( 2 + 3 * 4 )) # 14

echo $(( (2 + 3) * 4 )) # 20 // Brackets evaluted first
```
