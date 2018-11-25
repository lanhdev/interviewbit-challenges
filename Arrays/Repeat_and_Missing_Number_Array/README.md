# Repeat and Missing Number Array

## Problem: 
[https://www.interviewbit.com/problems/repeat-and-missing-number-array](https://www.interviewbit.com/problems/repeat-and-missing-number-array)

You are given a read only array of n integers from 1 to n.

Each integer appears exactly once except A which appears twice and B which is missing.

Return A and B.

_Note: Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?_

_Note that in your output A should precede B._

Example:

**Input**
```
[3, 1, 2, 5, 3] 
```

**Output**
```
[3, 4]

A = 3, B = 4
```

## Idea:

Assume we have array of n integers from 1 to n, this array contains both A and B: `1, 2, 3, ..., A, ..., B, ..., N`

The given array contains two As: `1, 2, 3, A, ..., A, ..., N`

```
Sum(1...N) = 1 + 2 + 3 + ... + A + ... + B + ... + N
Sum(Actual) = 1 + 2 + 3 + ... + A + ... + A + ... + N
=> Sum(Actual) - Sum(1...N) = A - B.
```

From above fact, we have one relation between `A` and `B`

We need one more relation. How about the sum of squares?

```
Sum(1^2 ... N^2) = 1^2 + 2^2 + 3^2 + ... + A^2 + ... + B^2 + ... + N^2
Sum(Actual Squares) = 1^2 + 2^2 + 3^2 + ... + A^2 + ... + A^2 + ... + N^2

=> Sum(Actual Squares) - Sum(1^2 ... N^2) = A^2 - B^2 = (A - B)(A + B) 
=> (Sum(Actual) - Sum(1...N))(A + B). 
```

