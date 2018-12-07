# Find Permutation

## Problem:
[https://www.interviewbit.com/problems/find-permutation](https://www.interviewbit.com/problems/find-permutation)

Given a positive integer `n` and a string `s` consisting only of letters `D` or `I`, you have to find any permutation of first `n` positive integer that satisfy the given input string.

`D` means the next number is ***smaller***, while `I` means the next number is ***greater***.

**NOTE:**

Length of given string s will always equal to `n - 1`

Your solution should run in ***linear*** time and space.

## Approach:

Try to keep an available range of element `[l, r]`. Initially, `l = 1` and `r = n`.

You always need to select smallest or largest element from available range.

When the input string contains only D or I we just need to return all positive number upto `n` either in descending or ascending orders respectively.
So if `n = 3`, `s = "II"`, return `[1, 2, 3]`

Now, starting with each character of the input string, we need to substitute an appropriate number(from `1` to `n`) corresponding to each character(`I` or `D`).

Suppose we started with a set corresponding to all the elements from that we need to make permutation (i.e all integer from `1` to `n`).

As I denotes the next number should be larger, we need to substitute ***smallest*** remaining number from our set corresponding to subsequent `I` as it automatically makes the next element to be larger.

Similar things will happen with character `D`, we need to substitute the ***largest*** remaining number from our set.

## Solution:

1- The return value should be a list from `1` to `n`, and the order of `D` and `I` is determined.

2- In the loop process, `I` will see that the next value should be higher than the current value, and `D` means that the next value should be lower than the current value; it can be allocated from the lowest value `min` and the highest value `max` and gradually increase/decrement.

3- After the loop is over, there will only be `n - 1` values ​​in the list. You must add another `min` or `max` to complete and output (`min` and `max` will be consistent at the end of the loop).

Example:

1- `s = "DDD", n = 4`, after the end of the loop `min = 1`, `max = 4 – 3 = 1`, `output = [4, 3, 2]`

2- `s = "III", n = 4`, after the end of the loop `min = 1 + 3 = 4`, `max = 4`, `output = [1, 2, 3]`

3- `s = "DID", n = 4`, after the end of the loop `min = 1 + 1 = 2`, `max = 4 – 2 = 2`, `output = [4, 1, 3]`

## Reference:
* [Python5566 - InterviewBit Find Permutation](https://python5566.wordpress.com/2017/11/02/interviewbit-find-permutation)
