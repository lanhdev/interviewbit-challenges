# Find Duplicate in Array

## Problem:
[https://www.interviewbit.com/problems/find-duplicate-in-array](https://www.interviewbit.com/problems/find-duplicate-in-array)

Given a read only array of `n + 1` integers between `1` and `n`, find one number that repeats in linear time using less than `O(n)` space and traversing the stream sequentially `O(1)` times.

Example:

**Input**
```
[3, 4, 1, 4, 1]
```

**Output**
```
4 or 1
```
If there are multiple possible answers (like in the sample case above), output any one.

If there is no duplicate, output `-1`

## Approach:

**[1] Sorting**

Intuition: If the numbers are sorted, then any duplicate numbers will be adjacent in the sorted array.

Algorithm: 

Given the intuition, the algorithm follows fairly simply. First, we sort the array, and then we compare each element to the previous element. Because there is exactly one duplicated element in the array, we know that the array is of at least length 2, and we can return the duplicate element as soon as we find it.

Time complexity: `O(nlogn)`

Space complexity: `O(1)` or `O(n)`

**[2] Hash table**

Intuition: If we store each element as we iterate over the array, we can simply check each element as we iterate over the array.

Algorithm:

In order to achieve linear time complexity, we need to be able to insert elements into a data structure (and look them up) in constant time. A hash table satisfies these constraints nicely, so we iterate over the array and insert each element into `seen`. Before inserting it, we check whether it is already there. If it is, then we found our duplicate, so we return it.

Time complexity: `O(n)`

Space complexity: `O(n)`

**[3] Based on value**

This approach is based on the fact that each integer is between `1` and `n`

Traverse the array. Do following for every index `i` of `A[]`
  
check for sign of `A[abs(A[i])]`

  _-_ if positive then make it negative by `A[abs(A[i])] = -A[abs(A[i])]`

  _-_ else (`A[abs(A[i])]` is negative) this element (i-th element of list) is a repetition

## Reference:
* [GeeksforGeeks - Find duplicates in O(n) time and O(1) extra space | Set 1](https://www.geeksforgeeks.org/find-duplicates-in-on-time-and-constant-extra-space)
