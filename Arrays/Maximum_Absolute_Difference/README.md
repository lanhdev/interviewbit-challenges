# Maximum Absolute Difference

## Problem: 
[https://www.interviewbit.com/problems/maximum-absolute-difference](https://www.interviewbit.com/problems/maximum-absolute-difference)

You are given an array of N integers `[A1, A2 ,…, AN]`. Return maximum value of `f(i, j)` for all _`1 ≤ i, j ≤ N`_.

`f(i, j)` is defined as `|A[i] - A[j]| + |i - j|`, where `|x|` denotes absolute value of `x`.

Example:

```
A = [1, 3, -1]

f(1, 1) = f(2, 2) = f(3, 3) = 0
f(1, 2) = f(2, 1) = |1 - 3| + |1 - 2| = 3
f(1, 3) = f(3, 1) = |1 - (-1)| + |1 - 3| = 4
f(2, 3) = f(3, 2) = |3 - (-1)| + |2 - 3| = 5

So, we return 5.
```

## Solution:

**1. Brute force:** _O(N * N) complexity_

Initialize `max = 0`

For each i in the array, we loop `j: i + 1 -> N - 1` and calculate `f(i, j)`

If result larger than `max`, we store result to `max`

Finally, return `max`

**2. Mathematic:** _O(N) complexity_

From `f(i, j) = |A[i] - A[j]| + |i - j|`, we have 4 cases:

```
1. A[i] - A[j] + i - j = (A[i] + i) - (A[j] + j)
2. A[i] - A[j] + j - i = (A[i] - i) - (A[j] - j)
3. A[j] - A[i] + i - j = -(A[i] - i) + (A[j] - j)
4. A[j] - A[i] + j - i = -(A[i] + i) + (A[j] + j)
```

_Note: We can see that case 1 and 4 are equivalent, so are case 2 and 3_

From expression 1 and 4, we have `|A[i] + i| - |A[j] + j|`

From expression 2 and 3, we have `|A[i] - i| - |A[j] - j|`

We can construct two arrays `a` and `b` with values `A[i] + i` and `A[i] - i` respectively. Then, for above 2 cases, we find the maximum value possible.

**Case 1:** `|A[i] + i| - |A[j] + j|`

From array which stores value `A[i] + i` for all `i`, we take maximum value and minimum value and calculate `|A[i] + i| - |A[j] + j|` expression to make sure result of the expression is largest. We have `max_plus` value.

**Case 2:** `|A[i] - i| - |A[j] - j|`

We do similar to case 1 and we have `max_diff` value.

Compare value `max_plus` and `max_diff`. The larger is our result.

For that, we just have to store minimum and maximum values of expressions `A[i] + i` and `A[i] - i` for all `i`.


