# Noble Integer

## Problem:
[https://www.interviewbit.com/problems/noble-integer](https://www.interviewbit.com/problems/noble-integer)

Given an integer array, find if an integer `p` exists in the array such that the number of integers greater than `p` in the array equals to `p`

If such an integer is found return `1` else return `-1`.

Example:

**Input**
```
1: [-1, -2, 0, 0, 0, -3]
2: [1, 2, 7, 0, 9, 3, 6, 0, 6]
3: [3, 1, 1, 1]
```

**Output**
```
1: 1
2: -1
3: 1
```

## Approach

**1. Brute force**

Iterate through the array. For every element `array[i]`, find the number of elements greater than `array[i]` and compare the number with value of `array[i]`, if it equals return `1` else `-1`

**2. Sorting**

Sort the array in ascending order. This step takes `O(nlogn)`.

Iterate through the array. Compare the value of index `i` to the number of elements after index `i`. If array[i] equals the number of elements after array[i], it is a noble Integer.

Condition to check: `A[i] == length - i - 1`. This step takes `O(n)`.

_**NOTE:** Array may have duplicate elements. So, we should skip the elements (adjacent elements in the sorted array) that are same._

## Reference

* [GeeksforGeeks - Noble integers in an array (count of greater elements is equal to value)](https://www.geeksforgeeks.org/noble-integers-in-an-array-count-of-greater-elements-is-equal-to-value)
