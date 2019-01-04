# Remove Duplicates from Sorted Array

## Problem:
[https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array](https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array)

Given a ***sorted*** array, remove the duplicates *in place* such that each element appears only once and return the new length.

Note that even though we want you to return the new length, make sure to change the original array as well in place

Do not allocate extra space for another array, you must do this in place with constant memory.

Example:

**Input**
```
A = [1, 1, 2]
```

**Output**
```
Return length = 2
A = [1, 2]
```

## Approach

**Method 1: Using extra space**

- Create an auxiliary array `temp[]` to store unique elements.

- Traverse input array and one by one copy unique elements of `arr[]` to `temp[]`. Also keep track of count of unique elements. Let this count be `j`.

- Copy `j` elements from `temp[]` to `arr[]` and return `j`

Time complexity: `O(N)`

Space complexity: `O(N)`

**Method 2: Constant extra space**

- Just maintain a separate index for same array as maintained for different array in Method 1.

Time complexity: `O(N)`

Space complexity: `O(1)`

**Clarification:**

Confused why the returned value is an integer but your answer is an array?

Note that the input array is passed in by reference, which means modification to the input array will be known to the caller as well.

Internally you can think of this:

`A` is passed in by reference. (i.e., without making a copy)

`len = removeDuplicates(A)`

Any modification to `A` in your function would be known by the caller.
Using the length returned by your function, it prints the first `len` elements.

```python
for i in range(len):
  print(A[i])
```

## Reference:
* [GeeksforGeeks - Remove duplicates from sorted array](https://www.geeksforgeeks.org/remove-duplicates-sorted-array)
