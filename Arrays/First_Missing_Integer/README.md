# First Missing Integer

## Problem:
[https://www.interviewbit.com/problems/first-missing-integer](https://www.interviewbit.com/problems/first-missing-integer)

Given an unsorted integer array, find the first missing positive integer.

## Approach:

To simply solve this problem, search all positive integers, starting from `1` in the given array. We may have to search at most `N + 1` numbers in the given array. So this solution takes `O(N * N)` in worst case.

We can use sorting to solve it in lesser time complexity. We can sort the array in `O(NLogN)` time. Once the array is sorted, then a linear scan of the array is all that remains to be done. This approach takes `O(NLogN + N)` time which is `O(NLogN)`.

We can also use hashing. We can build a hash table of all positive elements in the given array. Once the hash table is built, all positive integers, starting from 1 can be searched here. As soon as we find a number which is not there in the hash table, we return it. Approximately, this approach may take `O(N)` time, but it requires `O(N)` extra space.

But what we are really looking for is a `O(N)` time, `O(1)` space solution.

**NOTE:** number `A[i] <= 0` and `A[i] > N` (`N` being the size of the array) are not important to us since the missing positive integer will be in the range `[1, N + 1]`.

The answer will be `N + 1` only if **all of the elements of the array are exact one occurrence** of `[1, N]`.

If using extra space was an option, creating buckets would have been an easy solution.

Creating an array of size N initialized to `0`, for every value `A[i]` which lies in the range `[1, N]`, we would have incremented its count in the array. Consequently, we would traverse the array to find the first array position with value `0`, hence finding our answer.

However, since we are not allowed buckets, can we use the existing array as bucket somehow?

Now, since additional space is not allowed either, the given array itself needs to be used to track it.

It may be helpful to use the fact that the size of the set we are looking to track is `[1, N]` which happens to be the same size as the size of the array.

This means we can use the array to track these elements.

We traverse the array and if `A[i]` is in `[1, N]` range, we try to put in the index of same value in the array.

Following is the two step algorithm.

1- We can segregate positive from negative numbers i.e., copy all positive numbers to right side of array and put them in index `N + number`

Example:
```
A = [3, 4, -1, 1]
N = 4

Index: [0, 1,  2, 3,  4,  5,   6, 7, 8]
A    : [3, 4, -1, 1, nil, 1, nil, 3, 4]
```

2- Now we can ignore non-positive elements and consider only the part of array which contains all positive elements from index `N` to `2 * N`. We traverse the array containing all positive numbers and stop traversing at position where element equals nil. From that, we take the number at `index - 1` and plus 1

## Reference:
* [GeeksforGeeks - Find the smallest positive number missing from an unsorted array | Set 1](https://www.geeksforgeeks.org/find-the-smallest-positive-number-missing-from-an-unsorted-array)
* [GeeksforGeeks - Find the smallest positive number missing from an unsorted array | Set 2](https://www.geeksforgeeks.org/find-the-smallest-positive-number-missing-from-an-unsorted-array-set-2)
