# Flip

## Problem: 
[https://www.interviewbit.com/problems/flip](https://www.interviewbit.com/problems/flip)

You are given a binary string(i.e. with characters `0` and `1`) S consisting of characters `S1, S2, ..., SN`. In a single operation, you can choose two indices L and R such that `1 ≤ L ≤ R ≤ N` and flip the characters `SL, SL+1, ..., SR`. By flipping, we mean change character `0` to `1` and vice-versa.

Your aim is to perform ATMOST one operation such that in final string number of `1`s is maximised. If you don’t want to perform the operation, return an empty array. Else, return an array consisting of two elements denoting L and R. If there are multiple solutions, return the lexicographically smallest pair of L and R.

_**Notes:** Pair `(a, b)` is lexicographically smaller than pair `(c, d)` if `a < c` or, if `a == c` and `b < d`._

Example:

```
S = 010

Pair of [L, R] | Final string
_______________|_____________
[1 1]          | 110
[1 2]          | 100
[1 3]          | 101
[2 2]          | 000
[2 3]          | 001

We see that two pairs [1, 1] and [1, 3] give same number of 1s in final string. So, we return [1, 1].
```
```
If S = 111

No operation can give us more than three 1s in final string. So, we return empty array [].
```

## Idea

Note what is the net change in number of `1`s in string S when we flip bits of string S. 

Say it has A `0`s and B `1`s. Eventually, there are B `0`s and A `1`s. So, number of `1`s increase by `A - B`. We want to choose a subarray which maximizes this.

Note, if we change `1`s to `-1`, then sum of values will give us A - B. Then, we have to find a subarray with maximum sum, which can be done via **Kadane’s Algorithm**.

## Reference

* [Maximize number of 0s by flipping a subarray](https://www.geeksforgeeks.org/maximize-number-0s-flipping-subarray)
