# https://www.interviewbit.com/problems/rotated-sorted-array-search

# Loop
class Solution:
  # @param A : tuple of integers
  # @param B : integer
  # @return an integer
  def search(self, A, B):
    left = 0
    right = len(A) - 1
    while left <= right:
      mid = (left + right) // 2
      # target found
      if A[mid] == B:
        return mid
      # if left half is sorted
      if A[left] <= A[mid]:
        # if target is presented in left half
        if A[left] <= B <= A[mid]:
          right = mid - 1
        # if target is not presented in left half, search right half
        else:
          left = mid + 1
      # if right half is sorted
      else:
        # if target is presented in right half
        if A[mid] <= B <= A[right]:
          left = mid + 1
        # if target is not presented in right half, search left half
        else:
          right = mid - 1
    # target not found
    return -1

# Recursion
class Solution:
  # @param A : tuple of integers
  # @param B : integer
  # @return an integer
  def search(self, A, B):
    return self.binary_search(A, B, 0, len(A) - 1)

  def binary_search(self, A, B, left, right):
    # target not found
    if left > right:
      return -1

    mid = (left + right) // 2
    # target found
    if A[mid] == B:
      return mid
    # if left half is sorted
    if A[left] <= A[mid]:
      # if target is presented in left half
      if A[left] <= B <= A[mid]:
        return self.binary_search(A, B, left, mid - 1)
      # if target is not presented in left half, search right half
      else:
        return self.binary_search(A, B, mid + 1, right)
    # if right half is sorted
    else:
      # if target is presented in right half
      if A[mid] <= B <= A[right]:
        return self.binary_search(A, B, mid + 1, right)
      # if target is not presented in right half, search left half
      else:
        return self.binary_search(A, B, left, mid - 1)
