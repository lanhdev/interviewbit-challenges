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

Focus on your input, let's say you store it in an array called `A`. This array will initially consist of zeros and ones.

Now focus on an operation. Let us try to understand what an operation really does. An operation is executed on a segment (or subarray) of `A` defined by some left index `i` and some right index `j`. When you apply an operation on this segment all its elements are flipped. We want to find that segment, or subarray, defined by `i,j` such that if an operation is applied, then the total number of ones in `A` is maximized.

Having understood exactly what this problem is asking us to do, we can now change the formulation a little bit. When we make an operation and change some 0 to 1, we get a **_gain_** of 1. A gain basically refers to the fact that you just managed to create a 1, and 1s are good since the more you have, the better the score of the corresponding operation. If we change some 1 to 0, we get a gain of -1 respectively. Now let `G` be some array for which initially we have `G[i] = 1` if `A[i] = 0` and `G[i] = -1` if `A[i] = 1`.

Suppose that you can somehow find the subarray of `G` that achieves the maximum overall gain `x`. And let `y` be the number of 1s that you originally have in `A`. The optimal score will then be equal to `x + y`.

To find that subarray of G you can apply [**Kadane's algorithm**](https://en.wikipedia.org/wiki/Maximum_subarray_problem) that finds the subarray with the maximum sum (in our case overall gain) and runs in O(n) time while only using O(n) space. The general idea is to define two variables, `maxendinghere` and `maxsofar`. The first variable is updated incrementally and for some position `i` in your input array (`G` in this case) it says what is the maximum sum of a subarray ending in position `i`. And the second variable is used to remember the maximum value of `maxendinghere` during the course of the algorithm.

## Reference

1. [Maximize number of 0s by flipping a subarray](https://www.geeksforgeeks.org/maximize-number-0s-flipping-subarray)
2. [CodeForces - Flipping Game explaination and approach](https://codeforces.com/blog/entry/23287?#comment-277027)
