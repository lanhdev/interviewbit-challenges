# https://www.interviewbit.com/problems/rotate-matrix

class Solution:
  # @param A : list of list of integers
  # @return the same list modified
  def rotate(self, A):
    N = len(A[0])

    for i in range(N // 2):
      for j in range(i, N - 1 - i):
        temp = A[i][j]
        A[i][j] = A[N - 1 - j][i]
        A[N - 1 - j][i] = A[N - 1 - i][N - 1 - j]
        A[N - 1 - i][N - 1 - j] = A[j][N - 1 - i]
        A[j][N - 1 - i] = temp

    return A
