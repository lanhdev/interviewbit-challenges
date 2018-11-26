# Max Non Negative SubArray

## Problem:
[https://www.interviewbit.com/problems/max-non-negative-subarray](https://www.interviewbit.com/problems/max-non-negative-subarray)

Find out the maximum sub-array of non negative numbers from an array.

The sub-array should be continuous. That is, a sub-array is created by choosing the second and fourth element and skipping the third element is _**invalid**_.

Maximum sub-array is defined in terms of the sum of the elements in the sub-array. Sub-array A is greater than sub-array B if `sum(A) > sum(B)`.

Example:
```
A : [1, 2, 5, -7, 2, 3]
The two sub-arrays are [1, 2, 5] [2, 3].
The answer is [1, 2, 5] as its sum is larger than [2, 3]
```

**NOTE 1:** `If there is a tie, then compare with segment's length and return segment which has maximum length`

**NOTE 2:** `If there is still a tie, then return the segment with minimum starting index`


## Approach:

From the problem, I notice 4 things:

1. Find sub-array has maximum sum
2. Sub-array has non negative numbers
3. If there are multiple valid sub-arrays and sum of those sub-arrays equals, consider length of those sub-arrays and return sub-array has maximum length
4. If length of those sub-arrays still equals, return sub-array has minimum starting index

Example:

**Input**

```
A: [a, b, c, d, e, f]
```

**Output**

Case 1: Sub-array has maximum
```
Sub-arrays: [a, b] and [d, e]
Sum([a, b]) > Sum([d, e]) => [a, b]
```

Case 2: Sum equal, consider length
```
Sub-arrays: [a, b, c] and [e, f]
Sum([a, b, c]) == Sum([e, f]) => [a, b, c]
```

Case 3: Sum equal, length equal, consider index
```
Sub-arrays: [a, b] and [d, e]
Sum([a, b]) == Sum([d, e]) => [a, b]
```

My solution is inspired from Kadane's algorithm

**NOTE:** Some edge cases

```
[-1, -1, -1, -1, -1]
[0, 0, 0, 0, 0]
[0, 0, -1, 0]
```

## Solution:

```
Loop i = 1 to Array.length:
  IF current element is positive:
    update current sum
    compare max sum with current sum
    update max sum
    update max ranges
  ELSE:
    current sum := 0
    update current ranges.
EndLoop;

return elements of max ranges
```

## Reference
* [Quora - How can I get the maximum sum subarray for only non-negative subarrays?](https://qr.ae/TUh0DX)
* [Max Non Negative SubArray](https://practice2code.blogspot.com/2016/07/max-non-negative-subarray.html)
