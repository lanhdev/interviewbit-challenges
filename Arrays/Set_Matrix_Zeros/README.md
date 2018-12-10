# Set Matrix Zeros

## Problem:
[https://www.interviewbit.com/problems/set-matrix-zeros](https://www.interviewbit.com/problems/set-matrix-zeros)

Given an `m x n` matrix of `0s` and `1s`, if an element is `0`, set its entire row and column to `0`.

Do it in place.

Example:

**Input**
```
[
  [1, 0, 1],
  [1, 1, 1],
  [1, 1, 1]
]
```

**Output**
```
[
  [0, 0, 0],
  [1, 0, 1],
  [1, 0, 1]
]
```

## Approach:

Create two arrays `rowFlag` (size is number of rows) and `colFlag` (size is number of columns) with all values are `True`. Those arrays are used to store information which row and which column need to be set to `0`

Traverse through all elements of input matrix, if element at row `r` and column `c` equal to `0` we set `rowFlag[r] = False` and `colFlag[c] = False`.

Travese through all elements of input matrix again, if element at row `r` and column `c` has either `rowFlag[r] = False` or `colFlag[c] = False`, that element will be set to `0`

Time complexity: `O(m * n)`

Space complexity: `O(m + n)`

## Reference:
* [GeeksforGeeks - A Boolean Matrix Question](https://www.geeksforgeeks.org/a-boolean-matrix-question)
