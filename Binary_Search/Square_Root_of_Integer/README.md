# Square Root of Integer

## Problem:
[https://www.interviewbit.com/problems/square-root-of-integer](https://www.interviewbit.com/problems/square-root-of-integer)

Implement int `sqrt(int x)`.

Compute and return the **square root of** `x`.

If `x` is not a perfect square, return `floor(sqrt(x))`

Example:

**Input**
```
11
```

**Output**
```
3
```

**DO NOT USE SQRT FUNCTION FROM STANDARD LIBRARY**

## Approach:
Let `s` be the answer. We know that `0 <= s <= x`.

Consider any random number `r`. 

If `r*r = r, s >= r`

If `r*r > x, s < r`

Algorithm:

*1)* Start with `start = 0`, `end = x`

*2)* Do following while `start` is smaller than or equal to `end`.
  - Compute `mid` as `(start + end) / 2`
  - Compare `mid * mid` with `x`.
  - If `x` is equal to `mid * mid`, return `mid`.
  - If `x` is greater, do binary search between `mid + 1` and `end`. In this case, we also update `ans` (Note that we need floor).
  - If `x` is smaller, do binary search between `start` and `mid`

## Reference:
* [GeeksforGeeks - Square root of an integer](https://www.geeksforgeeks.org/square-root-of-an-integer)
