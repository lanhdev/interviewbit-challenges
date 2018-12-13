# https://www.interviewbit.com/problems/prettyprint

class Solution
  # @param a : integer
  # @return an array of array of integers
  def prettyPrint(a)
    length = 2 * a - 1
    center_point = a - 1
    matrix = Array.new(length, 0) { Array.new(length, 0) }
    0.upto(length - 1).each do |row|
      0.upto(length - 1).each do |col|
        matrix[i][j] = [(row - center_point).abs, (col - center_point).abs].max + 1
      end
    end
    matrix
  end
end
