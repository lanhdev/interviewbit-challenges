# Reverse integer

## Problem:
[https://www.interviewbit.com/problems/reverse-integer](https://www.interviewbit.com/problems/reverse-integer)

Reverse digits of an integer.

Example 1:

**Input:**
```
x = 123
```

**Output:**
```
321
```

Example 2:

**Input:**
```
x = -123
```

**Output:**
```
-321
```

Return `0` if the result overflows and does not fit in a `32-bit signed integer`

## Approach:

Input is num

(1) Initialize result = 0

(2) Check sign of input and take the absolute value of input, `num = |num|`

(3) Loop while num > 0
- Take the last digit of a number by modulo num by 10, `remainder = num % 10`
- Multiply result by 10 and add remainder of num: `result * 10 + remainder`
- Divide num by 10, `num / 10`

(4) Check result whether it fits in `32-bit signed integer` range or not, if yes return `0`

(5) Return result, note that if input is negative, convert result to negative number

## Reference:
* [GeeksforGeeks - Write a program to reverse digits of a number](https://www.geeksforgeeks.org/write-a-program-to-reverse-digits-of-a-number)
* [GeeksforGeeks - Reverse digits of an integer with overflow handled](https://www.geeksforgeeks.org/reverse-digits-integer-overflow-handled)
