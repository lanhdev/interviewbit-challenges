# https://www.interviewbit.com/problems/pascal-triangle

class Solution
  # @param a : integer
  # @return an array of array of integers
  def solve(a)
    return [] if a == 0
    result = [[1]]
    (1...a).each do |row|
      result.push([1])
      (1..row).each do |col|
        result[row][col] = result[row - 1][col - 1] + result[row - 1].fetch(col, 0)
      end
    end

    result
  end
end

class Solution
  # @param a : integer
  # @return an array of array of integers
  def solve(a)
    result = []
    prev_row = []
    a.times do |idx|
      row = Array.new(idx + 1)
      row[0] = 1
      row[idx] = 1
      1.upto(idx - 1) do |col|
        row[col] = prev_row[col - 1] + prev_row[col]
      end
      result.push(row)
      prev_row = row
    end

    result
  end
end
