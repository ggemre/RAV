# Arrays

Arrays are the fundamental collection of data in RAV.

To create an array, use square brackets. **NOTE:** every element in an array must be the same data type.

```
int[] arr = [1, 2, 3, 4];
```

To access a single element in an array, use a dot, (`.`);

```
int[] nums = [3, 4, 5, 6];
int num = nums.1;
```

The code above assignes the value `4` to `num`. **NOTE:** the value held in the array identifier is just the first element, so the code below is true.

```
int[] arr = [1, 2, 4];
arr.0 == arr;
```
