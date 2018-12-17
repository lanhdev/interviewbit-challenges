# https://www.interviewbit.com/problems/search-for-a-range

# Recursion
class Solution:
  # @param A : tuple of integers
  # @param B : integer
  # @return a list of integers
  def bs_first(self, arr, left, right, target):
    if left <= right:
      mid = (left + right) // 2
      if (mid == left or target > arr[mid - 1]) and arr[mid] == target:
        return mid
      elif target > arr[mid]:
        return self.bs_first(arr, mid + 1, right, target)
      else:
        return self.bs_first(arr, left, mid - 1, target)
    return -1

  def bs_last(self, arr, left, right, target):
    if left <= right:
      mid = (left + right) // 2
      if (mid == right or target < arr[mid + 1]) and arr[mid] == target:
        return mid
      elif target < arr[mid]:
        return self.bs_last(arr, left, mid - 1, target)
      else:
        return self.bs_last(arr, mid + 1, right, target)
    return -1

  def searchRange(self, A, B):
    return [self.bs_first(A, 0, len(A) - 1, B), self.bs_last(A, 0, len(A) - 1, B)]

# Loop
class Solution:
  # @param A : tuple of integers
  # @param B : integer
  # @return a list of integers
  def bs_first(self, arr, target):
    left = 0
    right = len(arr) - 1
    while left <= right:
      mid = (left + right) // 2
      if (mid == left or arr[mid - 1] < target) and arr[mid] == target:
        return mid
      elif target > arr[mid]:
        left = mid + 1
      else:
        right = mid - 1
    return -1

  def bs_last(self, arr, target):
    left = 0
    right = len(arr) - 1
    while left <= right:
      mid = (left + right) // 2
      if (mid == right or arr[mid + 1] > target) and arr[mid] == target:
        return mid
      elif target >= arr[mid]:
        left = mid + 1
      else:
        right = mid - 1
    return -1

  def searchRange(self, A, B):
    return [self.bs_first(A, B), self.bs_last(A, B)]
