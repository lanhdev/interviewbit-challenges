# https://www.interviewbit.com/problems/min-steps-in-infinite-grid

class Solution:
  # @param A : list of integers
  # @param B : list of integers
  # @return an integer
  def coverPoints(self, A, B):
    n = len(A)
    steps_count = 0
    for i in range(n - 1):
      steps_count += self.shortest_path(A[i], B[i], A[i + 1], B[i + 1])
    return steps_count
  
  def shortest_path(self, ux, uy, vx, vy):
    dx = abs(ux - vx)
    dy = abs(uy - vy)
    return max(dx, dy)
