# Merge Intervals

## Problem:
[https://www.interviewbit.com/problems/merge-intervals](https://www.interviewbit.com/problems/merge-intervals)

Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).

*You may assume that the intervals were initially sorted according to their start times.*

Example 1:

Given intervals `[1, 3]`, `[6, 9]` insert and merge `[2, 5]` would result in `[1, 5],[6, 9]`.

Example 2:

Given `[1, 2]`, `[3, 5]`, `[6, 7]`, `[8, 10]`, `[12, 16]`, insert and merge `[4, 9]` would result in `[1, 2]`, `[3, 10]`, `[12, 16]`.

This is because the new interval `[4, 9]` overlaps with `[3, 5]`, `[6, 7]`, `[8, 10]`.

Make sure the returned intervals are also sorted.

## Approach:

Focus on endpoints and use the sorted property to quickly process intervals in the array

Specifically, processing an interval in the array takes place in `3` stages:

1- First, we iterate through intervals which appear completely before the interval to be added so all these intervals are added directly to the result

2- As soon as we encounter an interval that intersects the interval to be added, we compute its union with the interval to be added. This union is itself an interval. We iterate through subsequent intervals, as long as they intersect with the union we are forming

3- Finally, we iterate through the remaining intervals. Because the array was originally sorted, none of these can intersect with the interval to be added, so we add these intervals to the result.
