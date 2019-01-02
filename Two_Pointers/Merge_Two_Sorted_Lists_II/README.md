# Merge Two Sorted Lists II

## Problem:
[https://www.interviewbit.com/problems/merge-two-sorted-lists-ii](https://www.interviewbit.com/problems/merge-two-sorted-lists-ii)

Given two sorted integer arrays A and B, merge B into A as one sorted array.

**NOTE:** You have to modify the array A to contain the merge of A and B. Do not output anything in your code.

**Tip:** C users, please malloc the result into a new array and return the result.

If the number of elements initialized in A and B are `m` and `n` respectively, the resulting size of array A after your code is executed should be `m + n`

Example:

**Input**
```
A = [1, 5, 8]
B = [6, 9]
```

**Output**
```
[1, 5, 6, 8, 9]
```

## Approach:

The idea is to use Merge function of Merge sort.

* Create an array `arr3[]` of size `n1 + n2`.
* Simultaneously traverse `arr1[]` and `arr2[]`
  - Pick smaller of current elements in `arr1[]` and `arr2[]`
  - Copy this smaller element to next position in `arr3[]` and move ahead in `arr3[]` and the array whose element is picked.
* If there are are remaining elements in `arr1[]` or `arr2[]`, copy them also in `arr3[]`.

Time complexity: `O(n1 + n2)`

Space complexity: `O(n1 + n2)`

## Reference:
* [GeeksforGeeks - Merge two sorted arrays](https://www.geeksforgeeks.org/merge-two-sorted-arrays)
