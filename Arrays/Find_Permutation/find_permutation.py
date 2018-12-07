# https://www.interviewbit.com/problems/find-permutation

class Solution:
  # @param A : string
  # @param B : integer
  # @return a list of integers
  def findPerm(self, A, B):
    min, max = 1, B
    res = []
    for char in A:
      if char == 'D':
        res.append(max)
        max -= 1
      elif char == 'I':
        res.append(min)
        min += 1
    res.append(min)
    return res
