# Max Sum Contiguous Subarray

## Problem: 
[https://www.interviewbit.com/problems/max-sum-contiguous-subarray](https://www.interviewbit.com/problems/max-sum-contiguous-subarray)

Find the contiguous subarray within an array (containing at least one number) which has the largest sum.

Example:

Given the array `[-2,1,-3,4,-1,2,1,-5,4]`, the contiguous subarray `[4,-1,2,1]` has the largest sum equals 6.

For this problem, return the maximum sum.

**Input**
```
[-2,1,-3,4,-1,2,1,-5,4]
```
**Output**
```
6
```
## Idea:

Let us say `Ai, Ai+1 … Aj` is our optimal solution.

Note that no prefix of the solution will ever have a negative sum.

Let us say `Ai … Ak` prefix had a negative sum which means `Sum(Ai … Ak) < 0`

```
Sum (Ai, Ai+1 … Aj) = Sum (Ai … Ak) + Sum(Ak+1 … Aj)
<=> Sum (Ai, Ai+1 … Aj) - Sum(Ak+1 … Aj) = Sum(Ai … Ak)

Sum(Ai … Ak) < 0
=> Sum (Ai, Ai+1 … Aj) - Sum (Ak+1 … Aj) < 0
=> Sum(Ak+1 … Aj) > Sum (Ai, Ai+1 … Aj)
```

This contradicts the fact that `Ai, Ai+1 … Aj` is our optimal solution.

Instead, `Ak+1, Ak+2 … Aj` will be our optimal solution.

Similarily, you can prove that for optimal solution, it is always good to include a prefix with positive sum.

If this still does not make sense, watch reference [1](#Reference) for more detailed explanation

## Reference:
1. [Kadane's Algorithm to Maximum Sum Subarray Problem](https://www.youtube.com/watch?v=86CQq3pKSUw)
2. [Maximum Subarray Problem (Kadane’s algorithm)](https://www.techiedelight.com/maximum-subarray-problem-kadanes-algorithm)
3. [Print continuous subarray with maximum sum](https://www.techiedelight.com/print-continuous-subarray-with-maximum-sum)
