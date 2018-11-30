# Wave Array

## Problem:
[https://www.interviewbit.com/problems/wave-array](https://www.interviewbit.com/problems/wave-array)

Given an array of integers, sort the array into a wave like array and return it, 

In other words, arrange the elements into a sequence such that `a1 >= a2 <= a3 >= a4 <= a5.....`

Example:

**Input**
```
[1, 2, 3, 4]
```
**Output**
```
[2, 1, 4, 3] or [4, 1, 3, 2]
```

_**NOTE:** If there are multiple answers possible, return the one thats lexicographically smallest. 
So, in example case, you will return `[2, 1, 4, 3]`_

## Solution:

**1. Sorting**

First sort the input array, then swap all adjacent elements.

For example, let the input array be `[3, 6, 5, 10, 7, 20]`.

After sorting, we get `[3, 5, 6, 7, 10, 20]`.

After swapping adjacent elements, we get `[5, 3, 7, 6, 20, 10]`.

Time complexity: `O(nlogn)`

**2. Traverse through array and check even position**

The idea is based on the fact that if we make sure that all even position (at index 0, 2, 4, ...) elements are greater than their adjacent odd elements, we don’t need to worry about odd positioned element. Following are simple steps:

Traverse all even positioned elements of input array, and do following.

If current element is smaller than previous odd element, swap previous and current.

If current element is smaller than next odd element, swap next and current.

Time complexity: `O(n)`

## Reference:

* [GeeksforGeeks - Sort an array in wave form](https://www.geeksforgeeks.org/sort-array-wave-form-2)
