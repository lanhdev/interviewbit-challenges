# https://www.interviewbit.com/problems/spiral-order-matrix-ii

class Solution
  # @param a : integer
  # @return an array of array of integers
  def generateMatrix(a)
    result = Array.new(a, 0) { Array.new(a, 0) }
    left = 0
    right = a - 1
    top = 0
    bottom = a - 1
    count = 1
    dir = 0
    while top <= bottom && left <= right do
      case dir
      when 0
        left.upto(right).each do |i|
          result[top][i] = count
          count += 1
        end
        top += 1
      when 1
        top.upto(bottom).each do |i|
          result[i][right] = count
          count += 1
        end
        right -= 1
      when 2
        right.downto(left).each do |i|
          result[bottom][i] = count
          count += 1
        end
        bottom -= 1
      when 3
        bottom.downto(top).each do |i|
          result[i][left] = count
          count += 1
        end
        left += 1
      end
      dir = (dir + 1) % a
    end

    result  
  end
end

# Overall Complexity: O(a * a)
