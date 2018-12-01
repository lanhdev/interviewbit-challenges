# Max Distance

## Problem:

Given an array A of integers, find the maximum of `j - i` subjected to the constraint of `A[i] <= A[j]`.

If there is no solution possible, return `0`.

Example:

**Input**
```
[3, 5, 4, 2]
```
**Output**
```
2 for the pair (3, 4) with i = 0, j = 2
```

## Approach:

**1. Sorting:**

We create array `index[]` to stores the actual index of `A[i]` and sort `index[]` by value of input array by ascending order

Example:
```
Before:

Input: [3, 5, 4, 2]
Index: [0, 1, 2, 3]

After:

Input: [2, 3, 4, 5]
Index: [3, 0, 2, 1]
```

Now, all values of `A[j]` are sure bigger than `A[i]`

Since we want to maximize `index[j] - index[i]`, and `index[i]` is fixed, we are essentially looking at `Max(index[j])` for all `j > i`.

Time complexity: O(nlogn)
Space complexity: O(n)

This solution is not efficiency in term of memory if input is large because we have to initialize `index[]` based on input array size.

**2. Traverse through array:**

We need to get two optimum indexes of `A[]`: left index i and right index j.

For an element `A[i]`, we do not need to consider `A[i]` for left index if there is an element smaller than `A[i]` on left side of `A[i]`.

Similarly, if there is a greater element on right side of `A[j]` then we do not need to consider this `j` for right index.

So we construct two auxiliary arrays `LMin[]` and `RMax[]` such that `LMin[i]` holds the smallest element on left side of `A[i]` including `A[i]`, and `RMax[j]` holds the greatest element on right side of `A[j]` including `A[j]`.

After constructing these two auxiliary arrays, we traverse both of these arrays from left to right.

While traversing `LMin[]` and RMax[] if we see that `LMin[i]` is greater than `RMax[j]`, then we must move ahead in `LMin[]` (or do i++) because all elements on left of `LMin[i]` are greater than or equal to `LMin[i]`.

Otherwise we must move ahead in `RMax[j]` to look for a greater `j – i` value.

## Reference:
* [GeeksforGeeks - Given an array A[], find the maximum j – i such that A[j] > A[i]](https://www.geeksforgeeks.org/given-an-array-arr-find-the-maximum-j-i-such-that-arrj-arri)
