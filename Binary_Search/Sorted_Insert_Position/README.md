# Sorted Insert Position

## Problem:
[https://www.interviewbit.com/problems/sorted-insert-position](https://www.interviewbit.com/problems/sorted-insert-position)

Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Here are few examples.

```
[1, 3, 5, 6], 5 → 2
[1, 3, 5, 6], 2 → 1
[1, 3, 5, 6], 7 → 4
[1, 3, 5, 6], 0 → 0
```

## Approach:

Instead of looking for the element `x`, looking for the least elements `>= x`.

The reason why return `left`:

(1) At the point while loop is done, `left > right`. That is, `left >= right + 1`

(2) From the invariant, we know that the index is between `[left, right + 1]`, so `left <= high + 1`. Follwing from (1), now we know `left == right + 1`.

(3) Following from (2), the index is between `[left, right + 1] = [left, left]`, which means that low is the desired index

Therefore, we return `left` as the answer. You can also return `right + 1` as the result, since `left == right + 1`

## Reference:
* [LeetCode - C++ O(logn) Binary Search that handles duplicate](https://leetcode.com/problems/search-insert-position/discuss/15101)
