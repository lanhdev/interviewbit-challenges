# N/3 Repeat Number

## Problem:
[https://www.interviewbit.com/problems/n3-repeat-number](https://www.interviewbit.com/problems/n3-repeat-number)

You’re given a read only array of n integers. Find out if any integer occurs **more than** `n / 3` times in the array in linear time and constant additional space.

If so, return the integer. If not, return `-1`.

If there are multiple solutions, return any one.

Example:

**Input**
```
[1, 2, 3, 1, 1]
```

**Output**
```
1
1 occurs 3 times which is more than 5 / 3 times.
```

## Approach:

It works to simply pick all elements one by one. For every picked element, count its occurrences by traversing the array. 
If count becomes more than `n / 3`, then print the element. Time Complexity of this method would be `O(n * n)`.

A better solution is to use sorting.

First, sort all elements using a `O(NLogN)` algorithm. All required elements in a linear scan of array can be found once the array is sorted.

So overall, time complexity of this method is `O(NLogN) + O(N)` which is `O(NLogN)`.

However, a linear solution is needed here.

It is important to note that if at a given time, you have 3 distinct element from the array, if you remove them from the array, your answer does not change.

Would it help to maintain two elements from array with their count as you traversed the array?

The idea is based on [Moore's Voting algorithm](https://www.geeksforgeeks.org/majority-element).

We first find two candidates. Then we check if any of these two candidates is actually a majority.

We maintain 2 elements with their counts as we traverse along the array.

When we encounter a new element, there are 3 cases possible:

1-We *don't have 2 elements* yet. So add this to the list with count as `1`.

2-This element is *different from* the existing 2 elements. As we said before, we have 3 distinct numbers now. Removing them does not change the answer. So decrement 1 from count of 2 existing elements. If their count falls to 0, obviously its not a part of 2 elements anymore.

3-The new element is *same* as one of the 2 elements. Increment the count of that element.

Consequently, the answer will be one of the 2 elements left behind. If they are not the answer, then there is no element with `count > N / 3`.

## Reference:
* [GeeksforGeeks - N/3 repeated number in an array with O(1) space](https://www.geeksforgeeks.org/n3-repeated-number-array-o1-space)
* [GeeksforGeeks - Majority Element](https://www.geeksforgeeks.org/majority-element)
* [GeeksforGeeks - Given an array of of size n and a number k, find all elements that appear more than n/k times](https://www.geeksforgeeks.org/given-an-array-of-of-size-n-finds-all-the-elements-that-appear-more-than-nk-times)
