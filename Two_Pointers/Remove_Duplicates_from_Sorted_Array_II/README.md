# Remove Duplicates from Sorted Array II

## Problem:
[https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array-ii](https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array-ii)

Given a ***sorted*** array, remove the duplicates *in place* such that each element can appear atmost twice and return the new length.

Do not allocate extra space for another array, you must do this in place with constant memory.

Note that even though we want you to return the new length, make sure to change the original array as well in place

Example:

**Input**
```
A = [1, 1, 1, 2]
```

**Output**
```
Return length = 3
A = [1, 1, 2]
```

## Approach



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

