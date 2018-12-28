# Pretty Print

## Problem:

Print concentric rectangular pattern in a 2d matrix. Let us show you some examples to clarify what we mean.

Example 1:

**Input:** 
```
A = 4
```
**Output:**
```
4 4 4 4 4 4 4
4 3 3 3 3 3 4
4 3 2 2 2 3 4
4 3 2 1 2 3 4
4 3 2 2 2 3 4
4 3 3 3 3 3 4
4 4 4 4 4 4 4
```

Example 2:

**Input:** 
```
A = 3
```
**Output:**
```
3 3 3 3 3 
3 2 2 2 3 
3 2 1 2 3 
3 2 2 2 3 
3 3 3 3 3
```

The outermost rectangle is formed by A, then the next outermost is formed by `A - 1` and so on.

You will be given A as an argument to the function you need to implement, and you need to return a 2D array.

## Approach:
Noticing that each number is the `distance from center + 1`. But it's not Euclidean distance, since going one step diagonally is `1` and not sqrt(2). So I had to use Chessboard distance, also known as [Chebyshev distance](https://en.wikipedia.org/wiki/Chebyshev_distance), which is defined as `max(|x1 - x2|, |y1 - y2|)`.

So for position `(i, j)`, the number is: `max(abs(i - (A - 1)), abs(j - (A - 1))) + 1`
because `(A - 1, A - 1)` is the center.
