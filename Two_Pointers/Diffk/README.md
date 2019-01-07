# Diffk

## Problem:
[https://www.interviewbit.com/problems/diffk](https://www.interviewbit.com/problems/diffk)

Given an array A of **sorted** integers and another non negative integer `k`, find if there exists 2 indices `i` and `j` such that `A[i] - A[j] = k`, `i != j`.

Example:

**Input:**
```
A = [1, 3, 5]
k = 4
```

**Output:**
```
YES as 5 - 1 = 4
```

Return `0 / 1` (0 for false, 1 for true) for this problem

Try doing this in **less than linear space complexity**.

## Approach:

**InterviewBit:**

The naive approach obviously is exloring all combinations of 2 integers using 2 loops and then checking their difference.

But can we use the fact that the array is sorted?

What if we have 2 pointers both pointing towards the start of the array?

Let us first look at why 2 pointer approach works here. 

A naive 2 loop approach would be:
```c++
for (int i = 0; i < len; i++) {
  for (int j = i + 1; j < len; j++) {
    if (A[j] - A[i] > diff) break; // No need going forward as the difference is going to increase even further. 
    if (A[j] - A[i] == diff) return true; 
  }
}
```

Now, let us say that for `i = I`, we we exploring `j`.

- At `j = J - 1`, our difference D1 was less than diff
- At `j = J`, our difference D2 exceeded diff.

When `i = I + 1`, our `A[i]` increases (as the array is sorted).
So, for `j = J - 1`, the differece will be smaller than D1 (which is even more smaller to diff) 
Which means we do not need to explore `j <= J - 1` and we can begin exploring directly from `j = J`.

So, `j` only keeps moving in forward direction and never needs to come back as `i` increases.

Let us use that in a solution now:
```c++
int j = 0; 
for (int i = 0; i < len; i++) {
  j = max(j, i+1);
  while (j < len && (arr[j] - arr[i] < diff)) j += 1;
  if (arr[j] - arr[i] == diff) return true;
}
```

**GeeksforGeeks:**

One thing to notice is input array is sorted

Once the array is sorted, traverse the array from left to right

The idea is:

- Take two index variables `i` and `j`, initialize them as `0` and `1` respectively.

- Run a linear loop.

- If `arr[j] – arr[i] < k`, we need to look for `greater arr[j]`, so increment `j`.

- If `arr[j] – arr[i] > k`, we need to look for `greater arr[i]`, so increment `i`.

## Reference:
* [GeeksforGeeks - Find a pair with the given difference](https://www.geeksforgeeks.org/find-a-pair-with-the-given-difference)
