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

class Solution:
  # @param A : list of integers
  # @param B : list of integers
  def merge(self, A, B):
    left = 0
    right = 0
    while left < len(A) and right < len(B):
      if A[left] > B[right]:
        A.insert(left, B[right])
        right += 1
      else:
        left += 1
    while right < n:
      A.append(B[right])
      right += 1
    print(' '.join(map(str, A)) + ' ')
