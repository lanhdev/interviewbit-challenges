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

This can be done in `O(logN)` using a slightly modified binary search.

The interesting property of a sorted + rotated array is that when you divide it into two halves, atleast one of the two halves will always be sorted.

```
arr = [4,5,6,7,8,9,1,2,3]
number of elements  = 9
mid index = (0+8) / 2 = 4

[4,5,6,7,8,9,1,2,3]
         ^
 left   mid  right
```

as seem right sub-array is not sorted while left sub-array is sorted.

If mid happens to be the point of rotation them both left and right sub-arrays will be sorted.

```
[6,7,8,9,1,2,3,4,5]
         ^
 left   mid  right
```

But in any case one half(sub-array) must be sorted.

We can easily know which half is sorted by comparing start and end element of each half.

Once we find which half is sorted we can see if the key is present in that half - simple comparison with the extremes.

If the key is present in that half we recursively call the function on that half

else we recursively call our search on the other half.

We are discarding one half of the array in each call which makes this algorithm `O(logN)`.

Following is the algorithm:

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
