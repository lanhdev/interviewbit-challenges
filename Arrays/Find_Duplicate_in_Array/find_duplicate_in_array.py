# https://www.interviewbit.com/problems/find-duplicate-in-array

class Solution:
  # @param A : tuple of integers
  # @return an integer
  def repeatedNumber(self, A):
    B = [val for val in A]
    for val in B:
      if B[abs(val) - 1] < 0:
        return abs(val)
      B[abs(val) - 1] = -B[abs(val) - 1]
    return -1
