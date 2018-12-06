# https://www.interviewbit.com/problems/next-permutation

class Solution:
  # @param A : list of integers
  # @return the same list of integer after modification
  def nextPermutation(self, A):
    n = len(A)
    k = -1
    l = -1
    for i in range(n - 1):
      if A[i] < A[i + 1]:
        k = i
 
    if k == -1:
      return reversed(A)

    for j in range(k + 1, n):
      if A[k] < A[j]:
        l = j
    A[k], A[l] = A[l], A[k]
    A[k + 1:] = reversed(A[k + 1:])
 
    return A
