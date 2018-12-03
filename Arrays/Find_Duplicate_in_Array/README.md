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

Traverse the array. Do following for every index `i` of `A[]`
  
check for sign of `A[abs(A[i])]`

  _-_ if positive then make it negative by `A[abs(A[i])] = -A[abs(A[i])]`

  _-_ else (`A[abs(A[i])]` is negative) this element (i-th element of list) is a repetition

## Reference:
* [GeeksforGeeks - Find duplicates in O(n) time and O(1) extra space | Set 1](https://www.geeksforgeeks.org/find-duplicates-in-on-time-and-constant-extra-space)
