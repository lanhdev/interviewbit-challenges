# https://www.interviewbit.com/problems/min-steps-in-infinite-grid

class Solution
  # @param a : array of integers
  # @param b : array of integers
  # @return an integer
  def coverPoints(a, b)
    n = a.length - 1
    steps_count = 0
    (0...n).to_a.each do |i|
      steps_count += shortest_path(a[i], b[i], a[i + 1], b[i + 1])
    end
    steps_count
  end

  private

  def shortest_path(ux, uy, vx, vy)
    dx = (ux - vx).abs
    dy = (uy - vy).abs
    [dx, dy].max
  end
end
