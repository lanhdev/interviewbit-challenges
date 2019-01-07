# Diffk

## Problem:
[https://www.interviewbit.com/problems/diffk](https://www.interviewbit.com/problems/diffk)

Given an array A of **sorted** integers and another non negative integer `k`, find if there exists 2 indices `i` and `j` such that `A[i] - A[j] = k`, `i != j`.

Example:

**Input:**
```
A = [1, 3, 5]
k = 4
```

**Output:**
```
YES as 5 - 1 = 4
```

Return `0 / 1` (0 for false, 1 for true) for this problem

Try doing this in **less than linear space complexity**.

## Approach:

One thing to notice is input array is sorted

Once the array is sorted, traverse the array from left to right

The idea is:

- Take two index variables `i` and `j`, initialize them as `0` and `1` respectively.

- Run a linear loop.

- If `arr[j] – arr[i] < k`, we need to look for `greater arr[j]`, so increment `j`.

- If `arr[j] – arr[i] > k`, we need to look for `greater arr[i]`, so increment `i`.

## Reference:
* [GeeksforGeeks - Find a pair with the given difference](https://www.geeksforgeeks.org/find-a-pair-with-the-given-difference)

