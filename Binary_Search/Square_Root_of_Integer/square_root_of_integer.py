# https://www.interviewbit.com/problems/square-root-of-integer

# class Solution:
#   # @param A : integer
#   # @return an integer
#   def sqrt(self, A):
#     left = 0
#     right = A
#     while left <= right:
#       mid = (left + right) // 2
#       if mid * mid <= A:
#         left = mid + 1
#       else:
#         right = mid - 1
#     return right

# Binary search
class Solution:
  # @param A : integer
  # @return an integer
  def sqrt(self, A):
    if A <= 1:
      return A

    left = 1
    right = A
    res = 0
    while left <= right:
      mid = (left + right) // 2
      if mid * mid == A:
        return mid
      if mid * mid < A:
        left = mid + 1
        res = mid
      else:
        right = mid - 1
    return res
