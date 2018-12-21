# Matrix Search

## Problem:
[https://www.interviewbit.com/problems/matrix-search](https://www.interviewbit.com/problems/matrix-search)

Write an efficient algorithm that searches for a value in an `m x n` matrix.

This matrix has the following properties:

- Integers in each row are sorted from left to right.
- The `first integer` of each row is greater than or equal to the `last integer` of the previous row.

Example:

**Input**
```
Matrix = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]

Target = 3
```

**Output**
```
1 corresponds to true
```

Return `0 / 1` (`0` if the element is not present, `1` if the element is present) for this problem

## Approach:

**1. Binary search on each row**

Traverse through the matrix and do binary search on each row to find expected target.

If found, return 1

If there is no target, return 0

Time complexity: `O(M * logN)`

**2. Binary search on matrix**

Treat matrix as sorted array

`n * m` matrix convert to an array => `matrix[x][y] => a[x * m + y]`

an array convert to `n * m` matrix => `a[x] => matrix[x / m][x % m];`

Why we are doing divmod on the middle element?

Suppose we have a `4 * 5` matrix. So we will have `4 * 5 = 20` elements in the matrix.

Now as the elements in each row are sorted and first element of each row is `>=` last element of previous row, we can think the 2D array as a linear sorted array and perform binary search on the array. But linear indexes won't work for our 2D array. Here’s where the division and modulo comes into play.

For an array of the above mentioned size, `left = 0` and `right = 19` in the beginning.

So in the first iteration `mid = (0 + 19) / 2 = 9`

Now we can not directly search `A[9]` because it is a 2D array.

So how to convert ?

- For row number divide mid by number of columns in the matrix (in this case 5) `9 / 5 = 1`

- For column number take mod of div by number of columns in matrix `9 % 5 = 4`

Thus from `9` we get `A[1][4]` which will be the required element to be compared for the binary search.

Time complexity: `O(logMN) = O(log(M) + log(N))`

## Reference:
* [GeeksforGeeks - Search element in a sorted matrix](https://www.geeksforgeeks.org/search-element-sorted-matrix)
