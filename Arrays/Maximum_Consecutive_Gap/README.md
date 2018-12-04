# Maximum Consecutive Gap

## Problem:
[https://www.interviewbit.com/problems/maximum-consecutive-gap](https://www.interviewbit.com/problems/maximum-consecutive-gap)

Given an unsorted array, find the maximum difference between the successive elements in its sorted form.

Try to solve it in ***linear time/space***.

Example:

**Input**
```
[1, 10, 5]
```

**Output**
```
5
```

## Approach:

**I. Sorting**

Sort the array, traverse through array then check difference between two consecutive elements and find maximum difference

Time complexity: `O(N * logN)`

Space complexity: `O(1)`

**II. Bucketing**

Any form of sorting is going to be at least `O(N * logN)`, so we need to think outside of sorting.

Also, you can use extra `O(N)` space.

Try to think starting from maximum and minimum of array.

How can you use the gap between them to separate elements into different blocks/buckets in such a way that you dont have to evaluate the answer for elements within buckets.

Now, first try to think if you were already given the minimum value `MIN` and maximum value `MAX` in the array of size `N`, under what circumstances would the max gap be minimum and maximum ?

Obviously, maximum gap will be maximum when all elements are either MIN or MAX making `maxgap = MAX - MIN`.

Maximum gap will be minimum when all the elements are equally spaced apart between `MIN` and `MAX`. Lets say the spacing between them is gap.

So, they are arranged as
```
MIN, MIN + gap, MIN + 2*gap, MIN + 3*gap, ... MIN + (N-1)*gap
```
where
```
MIN + (N-1)*gap = MAX 
=> gap = (MAX - MIN) / (N - 1). 
```

So, we know now that our answer will lie in the range `[gap, MAX - MIN]`.

Now, if we know the answer is more than gap, what we do is create buckets of size gap for ranges
```
[MIN, MIN + gap), [MIN + gap, MIN + 2 * gap) ... and so on
```
There will only be `N - 1` such buckets. We place the numbers in these buckets based on their value.

If you pick any 2 numbers from a single bucket, their difference will be less than gap, and hence they would never contribute to maxgap (Remember `maxgap >= gap`). We only need to store the largest number and the smallest number in each bucket, and we only look at the numbers across bucket.

Now, we just need to go through the bucket sequentially (they are already sorted by value), and get the difference of `min_value` with `max_value` of previous bucket with at least one value. We take maximum of all such values.

Time complexity: `O(N)`

Space complexity: `O(N)`

## Reference:
* [GeeksforGeeks - Maximum adjacent difference in an array in its sorted form](https://www.geeksforgeeks.org/maximum-adjacent-difference-array-sorted-form)
* [The  Maximum  Gap  Problem:  Pigeonhole  Principle](http://www.zrzahid.com/the-%E2%80%A9maximum%E2%80%A9-gap%E2%80%A9-problem-%E2%80%A9pigeonhole-%E2%80%A9principle%E2%80%A9)
* [GeeksforGeeks - Pigeonhole Sort](https://www.geeksforgeeks.org/pigeonhole-sort)
