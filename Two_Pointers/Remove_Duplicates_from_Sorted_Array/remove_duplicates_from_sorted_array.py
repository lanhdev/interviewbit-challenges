# https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array

# Extra space
class Solution:
  # @param A : list of integers
  # @return an integer
  def removeDuplicates(self, A):
    n = len(A)
    # Return, if array is empty or contains a single element
    if n == 0 or n == 1:
      return n
    temp = [0] * n

    # Start traversing elements
    j = 0
    for i in range(0, n - 1):
      # If current element is not equal to next element
      # then store that current element
      if A[i] != A[i + 1]:
        temp[j] = A[i]
        j += 1
    # Store the last element as whether it is unique or repeated,
    # it hasn't stored previously 
    temp[j] = A[n - 1]
    j += 1

    # Modify original array
    for i in range(0, j): 
      A[i] = temp[i]

    return j

# Constant space
class Solution:
  # @param A : list of integers
  # @return an integer
  def removeDuplicates(self, A):
    n = len(A)
    if n == 0 or n == 1:
      return n
    j = 0
    for i in range(0, n - 1):
      if A[i] != A[i + 1]:
        A[j] = A[i]
        j += 1
    A[j] = A[n - 1]
    j += 1
    return j
    # for j in range(0, j):
    #   print A[j], # python2
    #   print(A[j], end=' ') # python3
