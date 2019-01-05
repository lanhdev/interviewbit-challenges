# https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array-ii

class Solution:
  # @param A : list of integers
  # @return an integer
  def removeDuplicates(self, A):
    n = len(A)
    if n < 2:
      return n
    prev = 1
    curr = 2
    while curr < n:
      if A[curr] == A[prev] and A[curr] == A[prev - 1]:
        curr += 1
      else:
        prev += 1
        A[prev] = A[curr]
        curr += 1
    return prev + 1

A = [1, 1, 1, 2]
print(Solution().removeDuplicates(A))
A = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ]
print(Solution().removeDuplicates(A))
