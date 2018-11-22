# Spiral Order Matrix II

## Problem:
[https://www.interviewbit.com/problems/spiral-order-matrix-ii](https://www.interviewbit.com/problems/spiral-order-matrix-ii/)

Given an integer n, generate a square matrix filled with elements from 1 to n^2 in spiral order.

Example:

Given n = 3

You should return the following matrix:
```
  [
    [ 1, 2, 3 ],
    [ 8, 9, 4 ],
    [ 7, 6, 5 ]
  ]
```
## Solution:
* Using 4 pointers left, right, top, bottom to traverse array 4 directions:
  * Left to Right
  * Top to Bottom
  * Right to Left
  * Bottom to Top
* At each element of matrix fill number
* Then increase number by 1
## Reference:
[https://www.youtube.com/watch?v=siKFOI8PNKM](https://www.youtube.com/watch?v=siKFOI8PNKM)
  
