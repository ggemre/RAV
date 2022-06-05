# Operations in RAV

### Arithmetic

RAV support addition, `+`, subtraction, `-`, multiplication, `*`, division, `/`, modulation, `%`.

```
int x = 3 + 2 * 5;
int y = 4 / 8 - 2;
int z = x + y % 2;
```

**NOTE:** RAV uses standard order of operations (PEMDAS).

```
int sum = (1 + 2) / 3;
```

### Comparison

RAV supports gt, `>`, ge, `>=`, lt, `<`, le, `<=`, eq, `==`, ne, `!=`.

```
bool test1 = 1 == 1;
bool test2 = 8 < 3;
bool test3 = 5 <= 1;
```

### Assignment

Rav supports assignment, `=`, and arithmetic assignment, `+=`, `-=`, `*=`, `/=`.

```
int x = 1;
x += 2;
x /= 2;
```

### Arithmetic, Comparison, and Assignment Together

All operators can be used together, of course.

```
bool z = (3 + 2) >= ((5 - 3) * 3)
```

**NOTE:** though standard spacing is used in the examples, no spacing is necessary.

```
int x=1+2/4*3;
```
