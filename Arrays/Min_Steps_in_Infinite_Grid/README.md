# Description:

## Problem: 
[https://www.interviewbit.com/problems/min-steps-in-infinite-grid](https://www.interviewbit.com/problems/min-steps-in-infinite-grid)

Given two integer arrays A and B, where A[i] is x coordinate and B[i] is y coordinate of ith point respectively.

Return an Integer, i.e minimum number of steps.

Example:

**Input**
```
A = [4, 1, 4, 10]
B = [6, 2, 5, 12]
```
**Output**
```
14
```
## Idea:
The shortest path will always be to take a diagonal if needed, and then travel the rest of the way vertically or horizontally.

Let's just define
```
change_x = A[i+1] - A[i]
change_y = B[i+1] - B[i]
```
So the diagonal distance is the distance where you are going the same amount in both x or y direction.
For example going from `(0,0)` to `(1,1)` we change both x and y by 1.
But if going from `(0,0)` to `(1,2)`, first we need to go to `(1,1)` (the diagonal) then move one more over to `(1,2)` (horizontal)
Since changing diagonal is always the same distance in both x and y we can calculate it by:
```
diagonal = min(abs(change_x), abs(change_y))
```
Now to find the leftover that is going to be the part that didn't get covered by the diagonal. So in the case of `(0,0)` -> `(1,1)` -> `(1,2)` we need to move a leftover of 1 but since the diagonal is 1 we can just take `2 - 1 = 1`
```
leftover = max(abs(change_x), abs(change_y)) - diagonal
```
Now the total is going to be
```
total = diagonal + leftover
      = diagonal + (max(abs(change_x), abs(change_y)) - diagonal)
      = max(abs(change_x), abs(change_y)
```
Since the diagonal cancels out.
