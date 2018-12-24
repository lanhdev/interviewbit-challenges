# Rotated Sorted Array Search

## Problem:
[https://www.interviewbit.com/problems/rotated-sorted-array-search](https://www.interviewbit.com/problems/rotated-sorted-array-search)

Suppose a sorted array is rotated at some pivot unknown to you beforehand.

(i.e., `0 1 2 4 5 6 7` might become `4 5 6 7 0 1 2` ).

You are given a target value to search. If found in the array, return its index, otherwise return `-1`.

You may assume no duplicate exists in the array.

Example:

**Input**
```
A = [4, 5, 6, 7, 0, 1, 2]
Target = 4
```

**Output**
```
0
```

***NOTE:** Think about the case when there are duplicates. Does your current solution work? How does the time complexity change?*

## Approach:

*1)* Find middle point `mid = (left + right) / 2`

*2)* If `target` is present at middle point, return `mid`.

*3)* Else If `arr[left..mid]` is ***sorted***
  - If key to be searched lies in range from `arr[left]` to `arr[mid]`, recur for `arr[left..mid]`.
  - Else recur for `arr[mid+1..right]`

*4)* Else `arr[mid+1..r]` must be ***sorted***
  - If key to be searched lies in range from `arr[mid+1]` to `arr[right]`, recur for `arr[mid+1..right]`.
  - Else recur for `arr[left..mid]`

## Reference:
* [StackOverflow - Searching in an sorted and rotated array](https://stackoverflow.com/a/4773960)
* [GeeksforGeeks - Search an element in a sorted and rotated array](https://www.geeksforgeeks.org/search-an-element-in-a-sorted-and-pivoted-array)
