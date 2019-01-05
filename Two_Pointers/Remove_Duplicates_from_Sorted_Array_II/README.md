# Remove Duplicates from Sorted Array II

## Problem:
[https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array-ii](https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array-ii)

Given a ***sorted*** array, remove the duplicates *in place* such that each element can appear **atmost twice** and return the new length.

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

Both Remove Duplicates from Sorted Array [I](https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array) and [II](https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array-ii) could be solved in a consistent and more general way by allowing the duplicates to appear `k` times (`k = 1` for problem I and `k = 2` for problem II).

We need a count variable to keep how many times the duplicated element appears

If we encounter a different element, just set counter to `1`

If we encounter a duplicated one, we need to check this count, if it is already `k`, then we need to skip it

Otherwise, we can keep this element

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
* [Code Says - Solution to Remove Duplicates from Sorted Array II by LeetCode](https://codesays.com/2014/solution-to-remove-duplicates-from-sorted-array-ii-by-leetcode)
* [Sigmainfy - LeetCode Remove Duplicates from Sorted Array I and II: O(N) Time and O(1) Space](https://www.sigmainfy.com/blog/leetcode-remove-duplicates-from-sorted-array-i-and-ii.html)
