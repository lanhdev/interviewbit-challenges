# Description:

* Problem: [https://www.interviewbit.com/problems/spiral-order-matrix-i](https://www.interviewbit.com/problems/spiral-order-matrix-i/)
* Given a matrix of m * n elements (m rows, n columns), return all elements of the matrix in spiral order.
* Example:
* Given the following matrix:
* Input
  ```
    [
      [ 1, 2, 3 ],
      [ 4, 5, 6 ],
      [ 7, 8, 9 ]
    ]
  ```
* Output
  ```
    [1, 2, 3, 6, 9, 8, 7, 4, 5]
  ```
* Solution:
  * Using 4 pointers left, right, top, bottom to traverse array 4 directions:
    * Left to Right
    * Top to Bottom
    * Right to Left
    * Bottom to Top
