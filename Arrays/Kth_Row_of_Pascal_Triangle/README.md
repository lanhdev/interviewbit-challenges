# Kth Row of Pascal's Triangle

## Problem:
[https://www.interviewbit.com/problems/kth-row-of-pascals-triangle](https://www.interviewbit.com/problems/kth-row-of-pascals-triangle)

Given an index k, return the kth row of the Pascal's triangle.

Pascal's triangle : To generate `A[C]` in row `R`, sum up `A'[C]` and `A'[C - 1]` from previous row `R - 1`.

Example:

**Input**
```
k = 3
```

**Output**
```
[1, 3, 3, 1]
```

**NOTE:** _k is 0-based. `k = 0`, corresponds to the row `[1]`._

**NOTE:** _Could you optimize your algorithm to use only `O(k)` extra space?_

## Solution:

There are 2 ways I used to solve this problem:
1. Build Pascal triangle then return a-th row
2. Calculate row by itself using formula which is describe in [[1]](#Reference)
  
Suppose we have to find n-th row, we always have `triangle[n][0] = 1`

For remained elements of a-th row, we can calculate theirs number by formula 

`triangle[n][k] = triangle[n][0] * (n - k + 1) / k` with `k` is `k-th` column

## Reference:

1. [Calculating a row or diagonal by itself](https://en.wikipedia.org/wiki/Pascal%27s_triangle#Calculating_a_row_or_diagonal_by_itself)
2. [GeeksForGeeks - Pascal’s Triangle](https://www.geeksforgeeks.org/pascal-triangle)
3. [StackOverflow - How to efficiently calculate a row in pascal's triangle?](https://stackoverflow.com/questions/15580291/how-to-efficiently-calculate-a-row-in-pascals-triangle)
