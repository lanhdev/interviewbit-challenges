# https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array-ii

# Two pointers
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

# Genenal method
class Solution:
  # @param A : list of integers
  # @return an integer
  def removeDuplicates(self, A):
    return self.removeDuplicatesHelper(A, 2)
  
  def removeDuplicatesHelper(self, A, k):
    # Remove some duplicate items in A. So that one single item
    # appears at most k times.
    if len(A) < k:
      return len(A)
    # The position for next write. And toWrite - 1
    # is th previous appeared item.
    toWrite = 1
    # The occurrence of previous appeared item.     
    count = 1
    for index in range(1, len(A)):
      if A[index] == A[toWrite-1]:
        # Is a duplicate item, being the same as the previous one.
        count += 1
        if count <= k:
          # It is allowed to appear M times or less.
          A[toWrite]  = A[index]
          toWrite    += 1
      else:
        # Meet with a new item.
        A[toWrite]  = A[index]
        toWrite    += 1
        count       = 1
    return toWrite

class Solution:
  # @param A : list of integers
  # @return an integer
  def removeDuplicates(self, A):
    return self.removeDuplicatesHelper(A, 2)
  
  def removeDuplicatesHelper(self, A, k):
    n = len(A)
    if n <= k:
      return n
    slow = 1
    fast = 1
    count = 1
    while fast < n:
      if A[fast] != A[fast - 1]:
        count = 1
        A[slow] = A[fast]
        slow += 1
      else:
        if count < k:
          A[slow] = A[fast]
          slow += 1
          count += 1
      fast += 1
    return slow

A = [1, 1, 1, 2]
print(Solution().removeDuplicates(A))
A = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ]
print(Solution().removeDuplicates(A))
