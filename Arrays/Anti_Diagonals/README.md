# Anti Diagonals

## Problem:
[https://www.interviewbit.com/problems/anti-diagonals](https://www.interviewbit.com/problems/anti-diagonals)

Give a `N * N` square matrix, return an array of its anti-diagonals. Look at the example for more details.

Example:

**Input**
```
[
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
```
**Output**
```
[ 
  [1],
  [2, 4],
  [3, 5, 7],
  [6, 8],
  [9]
]
```
**Input**
```
[
  [1, 2],
  [3, 4]
]
```
**Output**
```
[
  [1],
  [2, 3],
  [4]
]
```
## Approach

**1. My solution:**

With `N * N` square matrix, arrays of its anti-diagonals has `2 * N - 1` elements

For element `r` of array result, `r` is sum of `i` (row number) and `j` (column number) of square matrix

From above observation, we can loop `r` from `0` to `2 * N - 1` and consider 2 cases:
`r < N` and `r >= N`

**2. InterviewBit:**

With `N * N` square matrix, arrays of its anti-diagonals has `2 * N - 1` elements

For element `r` of array result, `r` is sum of `i` (row number) and `j` (column number) of square matrix

We traverse through square matrix, at each element of matrix, calculate sum of `i + j` and push element at coordinate `[i][j]` to row r-th with `r = i + j`

**3. Practice 2 Code:**

The point to observe here is that the sum of `i` (row number) and `j` (column number) is constant for each anti-diagonal. For example:
```
Diagonal 1 has i + j = 0
Diagonal 2 has i + j = 1
and so on.
```

So define `s = i + j`

Loop with `s` from `0` to `2 * (N - 1)` (maximum sum possible)

Now if `s = i + j` then `j = s - i`

So we have reduced the problem to two variables: `s` and `i`.

Complexity: `O(N * N)`

## Reference:

* [Practice 2 Code - Anti Diagonals](https://practice2code.blogspot.com/2016/08/anti-diagonals.html)
