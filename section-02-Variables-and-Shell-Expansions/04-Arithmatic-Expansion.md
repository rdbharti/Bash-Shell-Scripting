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

Exponents **
```bash
echo $(( 4 ** 2 )) # 16
```

Modulo operator % -> Returns remainder
```bash
echo $(( 5 % 2 )) # 1

echo $(( 4 % 2 )) # 0
```

### Arithmatic Operators Can not manage decimal numbers

```bash
echo $(( 2.5 + 3 )) 

# syntax error: invalid arithmetic operator (error token is ".5 + 3 ")
```

# bc command to manage decimal

bc = Basic Calculator

```bash
echo "5/2" | bc # 2
```

To get the decimal value, we will scale the value \
by using internal variable 'scale'. \
Scale value represents number of decimal places

```bash
echo "scale=2; 5/2" |bc # 2.50
```
**NOTE:** scale value need to be used first and then the expression.