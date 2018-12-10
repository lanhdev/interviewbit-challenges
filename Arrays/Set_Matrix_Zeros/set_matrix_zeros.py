# https://www.interviewbit.com/problems/set-matrix-zeros

class Solution:
  # @param A : list of list of integers
  # @return the same list modified
  def setZeroes(self, A):
    rows = len(A)
    cols = len(A[0])
    rowFlag = [True for _ in range(rows)]
    colFlag = [True for _ in range(cols)]
    for row in range(rows):
      for col in range(cols):
        if A[row][col] == 0:
          rowFlag[row] = False
          colFlag[col] = False

    for row in range(rows):
      for col in range(cols):
        if rowFlag[row] == False or colFlag[col] == False:
          A[row][col] = 0

    return A
