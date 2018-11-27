# Pascal Triangle

## Problem:
[https://www.interviewbit.com/problems/pascal-triangle](https://www.interviewbit.com/problems/pascal-triangle)

Given numRows, generate the first numRows of Pascal's triangle.

Pascal's triangle : To generate `A[C]` in row R, sum up `A'[C]` and `A'[C - 1]` from previous row `R - 1`.

Example:

**Input**
```
numRows = 5
```

**Output**
```
[
  [1],
  [1,1],
  [1,2,1],
  [1,3,3,1],
  [1,4,6,4,1]
]
```

## Solution:

`number at position i in current row = number at position i in previous row + number at position (i - 1) in previous row.`

Now, note that to calculate num at position i, we need the numbers in previous row. Which means it makes sense to create rows in order.

Create a 2D matrix where Matrix[r] denotes row r. 
Now process the rows starting from row number 1.

Row number 1 is obviously just 1.

`For Row i, Row[i][0] = Row[i][i] = 1. And Row[i][j] = Row[i - 1][j] + Row[i - 1][j - 1], when j belongs to [1, i)`
