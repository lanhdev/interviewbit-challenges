# Matrix Median

## Problem:
[https://www.interviewbit.com/problems/matrix-median](https://www.interviewbit.com/problems/matrix-median)

Given a N cross M matrix in which each row is sorted, find the overall median of the matrix. Assume `N * M` is odd.

Example:

**Input**
```
Matrix = [
  [1, 3, 5],
  [2, 6, 9],
  [3, 6, 9]
]

A = [1, 2, 3, 3, 5, 6, 6, 9, 9]
```

**Output**
```
Median is 5. So, we return 5.
```

***NOTE:** No extra memory is allowed.*

## Approach:

**1. Simple Method:**

The simplest method to solve this problem is to store all the elements of the given matrix in an array of size `r * c`. Then find the median element in this array.This seems to be the simplest method but it would take *extra memory*.

Time Complexity: `O(r * c)`

Space Complexity: `O(r * c)`

**2. Binary Search:**

The idea is that for a number to be median there should be exactly `n / 2` numbers which are less than this number. So, we try to find the count of numbers less than all the numbers. 

If we consider the `N * M` matrix as 1-D array then the median is the element of `((1 + N * M) / 2)`-th element.

From example input, median is ((1 + 3 * 3) / 2)-th = 5-th element of 1-D array which is `5`

Then consider `x` will be the median if `x` is an element of the matrix and `number of matrix elements ≤ x` equals `(1 + N * M) / 2`.

As the matrix elements in each row are sorted then you can easily find the number of elements in each row less than or equals `x`. For finding in the whole matrix, the complexity is `N * log M` with binary search.

Then first find the minimum and maximum element from the `N * M` matrix. Apply Binary Search on that range and run the above function for each `x`.

If `the number of elements in matrix ≤ x` is `(1 + N * M) / 2` and `x` contains in that matrix then `x` is the median.

Below is the step by step algorithm for this approach:

*-* First we find the minimum and maximum elements in the matrix. Minimum element can be easily found by comparing the first element of each row, and similarly the maximum element can be found by comparing the last element of each row.

*-* Then we use binary search on our range of numbers from minimum to maximum, we find the mid of the min and max, and get count of numbers less than our mid. And accordingly change the min or max.

*-* For a number to be median, there should be `(r * c) / 2` numbers smaller than that number. So for every number, we get the count of numbers less than that by using upper_bound() in each row of matrix, if it is less than the required count, the median must be greater than the selected number, else the median must be less than or equal to the selected number.

Time Complexity: `O(32 * r * log(c))`. The upper bound function will take `log(c)` time and is performed for each row. And since the numbers will be max of 32 bit, so binary search of numbers from min to max will be performed in at most 32 (`log2(2^32) = 32`) operations.

Space Complexity: `O(1)`

## Reference:
* [GeeksforGeeks - Find median in row wise sorted matrix](https://www.geeksforgeeks.org/find-median-row-wise-sorted-matrix)
* [StackOverflow - Median of a Matrix with sorted rows](https://stackoverflow.com/a/41414832)
* [YouTube - Programming Interview Question:Finding Median of a Matrix with sorted rows](https://www.youtube.com/watch?v=BpETOGNqKmo)
* [Problem of the day: Matrix median](https://kartikkukreja.wordpress.com/2016/10/11/problem-of-the-day-matrix-median)
