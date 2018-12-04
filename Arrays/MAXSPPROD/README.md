# MAXSPPROD

## Problem:
[https://www.interviewbit.com/problems/maxspprod](https://www.interviewbit.com/problems/maxspprod)

You are given an array `A` containing `N` integers. The special product of each `i-th` integer in this array is defined as the product of the following:

*LeftSpecialValue*: For an index `i`, it is defined as the index `j` such that `A[j] > A[i] (i > j)`. If multiple `A[j]`'s are present in multiple positions, the LeftSpecialValue is the *maximum* value of `j`.

*RightSpecialValue*: For an index `i`, it is defined as the index `j` such that `A[j] > A[i] (j > i)`. If multiple `A[j]`'s are present in multiple positions, the RightSpecialValue is the *minimum* value of `j`.

Write a program to find the maximum special product of any integer in the array.

Input: You will receive array of integers as argument to function.

Output: Maximum special product of any integer in the array modulo 1000000007.

***NOTE:*** If `j` does not exist, the LeftSpecialValue and RightSpecialValue are considered to be `0`.

Constraints: `1 <= N <= 10^5`, `1 <= A[i] <= 10^9`

## Approach:

This problem is based on [Next Greater Element](https://www.geeksforgeeks.org/next-greater-element).

From the current position, we need to find the closest greater element on its left and right side.

So to find next greater element, we use stack one from left and one from right.

Simply we are checking which element is greater and storing their index at specified position.

To calculate LeftSpecialValue.

Lets make a stack A.

We will keep elements in strictly decreasing order in stack A.

When processing the `i-th` element remove all the elements from the stack which have value less than or equal to `i-th` element. 
Now whatever element will remain at the top of index will give the index corresponding to LeftSpecialValue. If no element is at top then take it as 0.

Push `i-th` element in stack A now.

You can see each element is pushed and popped for atmax one time. Hence the solution runs in `O(n)` time.

Do the similar thing for RightSpecialValue.

## Reference:

* [GeeksforGeeks - Maximum product of indexes of next greater on left and right](https://www.geeksforgeeks.org/maximum-product-of-indexes-of-next-greater-on-left-and-right)
