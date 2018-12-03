# Maximum Unsorted Subarray

## Problem:
[https://www.interviewbit.com/problems/maximum-unsorted-subarray](https://www.interviewbit.com/problems/maximum-unsorted-subarray)

You are given an array (zero indexed) of N non-negative integers: `A0, A1 ,…, AN-1`.
Find the minimum sub-array `Al, Al+1 ,…, Ar` so if we sort that sub-array in ascending order, the whole array should get sorted.

If `A` is already sorted, output `-1`.

Example:

**Input**
```
1: [1, 3, 2, 4, 5]
2: [1, 2, 3, 4, 5]
```

**Output**
```
1: [1, 2]
2: [-1]

In the example 1, if we sort the sub-array [A1, A2], the whole array A should get sorted.
```

## Approach

**I. Sorting and compare**

We clone array A, sort new array and named the sorted array is B

Scan from start and check elements of both array at specific index, if A[i] is difference from B[i], we mark this index as `left` and stop scanning immediately

Scan from `left + 1` to end of both array and find the right most index that A[i] is difference from B[i], we mark this index as `right`

Index `left` and `right` is what we need to find

Time complexity: `O(NlogN)`

Space complexity: `O(N)`

**II. Traverse throught array**

Assume that `Al, ..., Ar` is the minimum unsorted sub-array which is to be sorted

Sub-arrays `A0, ..., Al-1` and `Ar+1, ..., AN-1` will be in sorted in ascending order

So `min(Al, ..., Ar) >= max(A0, ..., Al-1)`

and `max(Al, ..., Ar) <= min(Ar+1, ..., AN-1)`

1-Find the candidate unsorted subarray 

a-Scan from left to right and find the first element which is greater than the next element. Let `start` be the index of such an element. In the above example 1, s is 3 (index of 30).

b-Scan from right to left and find the first element (first in right to left order) which is smaller than the next element (next in right to left order). Let `end` be the index of such an element. In the above example 1, e is 7 (index of 31).

2-Check whether sorting the candidate unsorted subarray makes the complete array sorted or not. If not, then include more elements in the subarray.

a-Find the minimum and maximum values in `A[start..end]`. Let minimum and maximum values be `min` and `max`. min and max for [30, 25, 40, 32, 31] are 25 and 40 respectively.

b-Find the first element (if there is any) in `A[0..start-1]` which is greater than min, change `start` to index of this element. There is no such element in above example 1.

c-Find the last element (if there is any) in `A[end+1..N-1]` which is smaller than max, change `end` to index of this element. In the above example 1, e is changed to 8 (index of 35)

3-Print `start` and `end`.

Time complexity: `O(N)`

Space complexity: `O(1)`

## Reference:

* [GeeksforGeeks - Find the Minimum length Unsorted Subarray, sorting which makes the complete array sorted](https://www.geeksforgeeks.org/minimum-length-unsorted-subarray-sorting-which-makes-the-complete-array-sorted)
