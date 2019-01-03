# Intersection Of Sorted Arrays

## Problem:
[https://www.interviewbit.com/problems/intersection-of-sorted-arrays](https://www.interviewbit.com/problems/intersection-of-sorted-arrays)

Find the intersection of two sorted arrays.

OR in other words,

Given 2 sorted arrays, find all the elements which occur in both the arrays.

Example:

**Input:**
```
A = [1, 2, 3, 3, 4, 5, 6]
B = [3, 3, 5]
```

**Output:**
```
[3, 3, 5]
```

**Input:**
```
A = [1, 2, 3, 3, 4, 5, 6]
B = [3, 5]
```

**Output:**
```
[3, 5]
```

***NOTE:** For the purpose of this problem (as also conveyed by the sample case), assume that elements that appear more than once in both arrays should be included multiple times in the final output.*

## Approach:

To find intersection of 2 sorted arrays, follow the below approach:

- Use two index variables `i` and `j`, initial values `i = 0`, `j = 0`
- If `arr1[i]` is smaller than `arr2[j]` then increment `i`.
- If `arr1[i]` is greater than `arr2[j]` then increment `j`.
- If both are same then print any of them and increment both `i` and `j`.

## Reference:
* [GeeksforGeeks - Union and Intersection of two sorted arrays](https://www.geeksforgeeks.org/union-and-intersection-of-two-sorted-arrays-2)
