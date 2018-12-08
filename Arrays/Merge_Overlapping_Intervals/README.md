# Merge Overlapping Intervals

## Problem:
Given a collection of intervals, merge all overlapping intervals.

Example:

**Input**
```
[1, 3], [2, 6], [8, 10], [15, 18]
```

**Output**
```
[1, 6], [8, 10], [15, 18]
```

Make sure the returned intervals are sorted.

## Approach:

A **simple** approach is to start from the first interval and compare it with all other intervals for overlapping, if it overlaps with any other interval, then remove the other interval from list and merge the other into the first interval. Repeat the same steps for remaining intervals after first. This approach cannot be implemented in better than `O(n * n)` time.

An **efficient** approach is to first sort the intervals according to starting time. Once we have the sorted intervals, we can combine all intervals in a linear traversal. The idea is, in sorted array of intervals, if `interval[i]` doesn't overlap with `interval[i - 1]`, then `interval[i + 1]` cannot overlap with `interval[i - 1]` because starting time of `interval[i + 1]` must be greater than or equal to `interval[i]`. Following is the detailed step by step algorithm:

1- Sort the intervals based on increasing order of starting time.

2- Push the first interval on to a stack.

3- For each interval do the following

  a. If the current interval does not overlap with the stack top, push it.

  b. If the current interval overlaps with stack top and ending time of current interval is more than that of stack top, update stack top with the ending  time of current interval.

4- At the end stack contains the merged intervals.

## Reference:
* [GeeksforGeeks - Merge Overlapping Intervals](https://www.geeksforgeeks.org/merging-intervals)
