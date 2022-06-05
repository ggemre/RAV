# Functions and Functional Programming

RAV is a functional language. There are no objects or classes, everything is functional, and this is inline with the lower-level bloat-free philosophy of RAV.

To declare a function, use the `fn` keyword.

```
fn yell(msg) {
	string banner = "----";
	print.call(banner);
	print.call(msg);
	print.call(banner);
}
```

To call a function, you must use its `call()` property.

```
import stdlib/sysio.rav

fn main() {
	add.call(0, 2);
	add.call(5, 5);
	add.call(3, 41);
}

fn add(n1, n2) {
	int sum = n1 + n2;
	print.call(sum);
}
```

You can declare functions above or below their calls. RAV code is hoisted.

To return a value, use the `return` keyword.

```
fn moons(years) {
	return years * 12;
}
