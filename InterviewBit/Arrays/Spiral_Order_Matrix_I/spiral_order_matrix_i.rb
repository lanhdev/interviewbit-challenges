# https://www.interviewbit.com/problems/spiral-order-matrix-i

class Solution
  # @param a : constant array of array of integers
  # @return an array of integers
  def spiralOrder(a)
    left = 0
    right = a.first.size - 1
    top = 0
    bottom = a.size - 1
    dir = 0
    result = []
    while top <= bottom && left <= right do
      if dir == 0
        left.upto(right).each do |i| # O(n)
          result << a[top][i]
        end
        top += 1
      elsif dir == 1
        top.upto(bottom).each do |i| # O(m)
          result << a[i][right]
        end
        right -= 1
      elsif dir == 2
        right.downto(left).each do |i| # O(n)
          result << a[bottom][i]
        end
        bottom -= 1
      elsif dir == 3
        bottom.downto(top).each do |i| # O(m)
          result << a[i][left]
        end
        left += 1
      end
      dir = (dir + 1) % 4
    end

    result
  end
end

# Overall Complexity: O(m * n) - traverse through all elements of matrix
