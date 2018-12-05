# Rotate Matrix

## Problem:
[https://www.interviewbit.com/problems/rotate-matrix](https://www.interviewbit.com/problems/rotate-matrix)

You are given an n x n 2D matrix representing an image.

Rotate the image by 90 degrees (clockwise).

***You need to do this in place.***

Note that if you end up using an additional array, you will only receive partial score.

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
  [7, 4, 1],
  [8, 5, 2],
  [9, 6, 3]
]
```

## Approach:

First row of source –> First column of destination, elements filled in opposite order

Second row of source –> Second column of destination, elements filled in opposite order

so ... on

Last row of source –> Last column of destination, elements filled in opposite order.

An `N x N` matrix will have `floor(N / 2)` square cycles. For example, a `4 x 4` matrix will have `2` cycles. The first cycle is formed by its *1st row*, *last column*, *last row* and *1st column*. The second cycle is formed by *2nd row*, *second-last column*, *second-last row* and *2nd column*.

The idea is for each square cycle, we swap the elements involved with the corresponding cell in the matrix in clockwise direction i.e. from top to right, right to bottom, bottom to left and from left to top one at a time. We use nothing but a temporary variable to achieve this.

Explaination:

Let size of row and column be 3.

During first iteration:

`a[i][j]` = Element at first index (leftmost corner top) = 1.

`a[j][n - 1 - i]` = Rightmost corner top Element = 3.

`a[n - 1 - i][n - 1 - j]` = Righmost corner bottom element = 9.

`a[n - 1 - j][i]` = Leftmost corner bottom element = 7.

Move these elements in the clockwise direction.

During second iteration:

`a[i][j]` = 2.

`a[j][n - 1 - j]` = 6.

`a[n - 1 - i][n - 1 - j]` = 8.

`a[n - 1 - j][i]` = 4.

Similarly, move these elements in the clockwise direction.

## Reference:
* [GeeksforGeeks - Rotate a matrix by 90 degree in clockwise direction without using any extra space](https://www.geeksforgeeks.org/rotate-a-matrix-by-90-degree-in-clockwise-direction-without-using-any-extra-space)
* [GeeksforGeeks - Inplace rotate square matrix by 90 degrees | Set 1](https://www.geeksforgeeks.org/inplace-rotate-square-matrix-by-90-degrees)
