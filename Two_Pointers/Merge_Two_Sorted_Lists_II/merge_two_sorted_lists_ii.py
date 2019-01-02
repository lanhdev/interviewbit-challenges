# https://www.interviewbit.com/problems/merge-two-sorted-lists-ii

class Solution:
  # @param A : list of integers
  # @param B : list of integers
  def merge(self, A, B):
    m = len(A)
    n = len(B)
    res = [0 for _ in range(m + n)]
    left = 0
    right = 0
    index = 0
    while left < m and right < n:
      if A[left] <= B[right]:
        res[index] = A[left]
        left += 1
      else:
        res[index] = B[right]
        right += 1
      index += 1

    while left < m:
      res[index] = A[left]
      left += 1
      index += 1

    while right < n:
      res[index] = B[right]
      right += 1
      index += 1

    print(' '.join(map(str, res)) + ' ')
