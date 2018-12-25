# Implement Power Function

## Problem:
[https://www.interviewbit.com/problems/implement-power-function](https://www.interviewbit.com/problems/implement-power-function)

Implement `pow(x, n) % d`.

In other words, given `x`, `n` and `d`, find `x^n % d`

Note that remainders on division cannot be negative.

In other words, make sure the answer you return is non negative.

Example:

**Input**
```
x = 2, n = 3, d = 3
```

**Output**
```
2
2^3 % 3 = 8 % 3 = 2
```

## Approach:

We need to calculate (x ** n) % d

Now there are 2 cases:

- n is odd. So we need `base * base^(n-1)`

Example:
```
2^5 = 2^1 * 2^(5 - 1)
```

- n is even. Then we can make `base = base^2` and `n = n / 2`.
Example:
```
2^8 = 2^2 * 2^(8/2)
```

Below is the fundamental modular property that is used for efficiently computing power under modular arithmetic.

`(a * b) mod p = ((a mod p) * (b mod p)) mod p `

Example:
```
a = 50, b = 100, p = 13
50 mod 13 = 11
100 mod 13 = 9

(50 * 100) mod 13 = ((50 mod 13) * (100 mod 13)) mod 13 
<=> 5000 mod 13 = (11 * 9) mod 13
<=> 8 = 8
```


## Reference:
* [GeeksforGeeks - Write a program to calculate pow(x,n)](https://www.geeksforgeeks.org/write-a-c-program-to-calculate-powxn)
* [GeeksforGeeks - Write an iterative O(Log y) function for pow(x, y)](https://www.geeksforgeeks.org/write-an-iterative-olog-y-function-for-powx-y)
* [GeeksforGeeks - Modular Exponentiation (Power in Modular Arithmetic)](https://www.geeksforgeeks.org/modular-exponentiation-power-in-modular-arithmetic)
* [GeeksforGeeks - Modular exponentiation (Recursive)](https://www.geeksforgeeks.org/modular-exponentiation-recursive)
