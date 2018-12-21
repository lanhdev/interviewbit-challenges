# https://www.interviewbit.com/problems/matrix-search

# Binary search on each row
class Solution:
  # @param A : list of list of integers
  # @param B : integer
  # @return an integer
  def searchMatrix(self, A, B):
    for row in A:
      if self.binary_search(row, B) != -1:
        return 1
    return 0

  def binary_search(self, arr, target):
    left = 0
    right = len(arr) - 1
    while left <= right:
      mid = (left + right) // 2
      if arr[mid] == target:
        return mid
      if arr[mid] < target:
        left = mid + 1
      else:
        right = mid - 1
    return -1

# Binary search on matrix
class Solution:
  # @param A : list of list of integers
  # @param B : integer
  # @return an integer
  def searchMatrix(self, A, B):
    if self.binary_search(A, B) != -1:
      return 1
    return 0

  def binary_search(self, matrix, target):
    rows = len(matrix)
    cols = len(matrix[0])
    left = 0
    right = rows * cols - 1
    while left <= right:
      mid = (left + right) // 2
      midrow = mid // cols
      midcol = mid % cols
      if matrix[midrow][midcol] == target:
        return mid
      if matrix[midrow][midcol] < target:
        left = mid + 1
      else:
        right = mid - 1
    return -1
