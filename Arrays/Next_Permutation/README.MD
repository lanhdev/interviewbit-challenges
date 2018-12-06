# Next Permutation

## Problem:
[https://www.interviewbit.com/problems/next-permutation](https://www.interviewbit.com/problems/next-permutation)

Implement the next permutation, which rearranges numbers into the numerically next greater permutation of numbers.

If such arrangement is not possible, it must be rearranged as the lowest possible order ie, sorted in an ascending order.

The replacement must be in-place, **do not** allocate extra memory.

Examples:
```
1,2,3 → 1,3,2

3,2,1 → 1,2,3

1,1,5 → 1,5,1

20, 50, 113 → 20, 113, 50
```
_Inputs are in the left-hand column and its corresponding outputs are in the right-hand column._

***Warning:** DO NOT USE LIBRARY FUNCTION FOR NEXT PERMUTATION. Use of Library functions will disqualify your submission retroactively and will give you penalty points.*

## Approach:

1-Find the largest index `k` such that `a[k] < a[k + 1]`. If no such index exists, the permutation is the last permutation.

2-Find the largest index `l` greater than `k` such that `a[k] < a[l]`.

3-Swap the value of `a[k]` with that of `a[l]`.

4-Reverse the sequence from `a[k + 1]` up to and including the final element `a[n]`.

## Reference:
* [Wikipedia - Permutation: Generation in lexicographic order](https://en.wikipedia.org/wiki/Permutation#Generation_in_lexicographic_order)
