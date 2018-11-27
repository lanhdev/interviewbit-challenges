# https://www.interviewbit.com/problems/kth-row-of-pascals-triangle

# Build Pascal triangle then return a-th row
# Overall complexity: Time: O(a^2) - Space: O(a^2)
class Solution
  # @param a : integer
  # @return an array of integers
  def getRow(a)
    triangle = []
    prev_row = []
    (a + 1).times do |idx|
      row = Array.new(idx + 1)
      row[0] = 1
      row[idx] = 1
      (1...idx).each do |col|
        row[col] = prev_row[col - 1] + prev_row[col]
      end
      triangle.push(row)
      prev_row = row
    end

    triangle[a]
  end
end

# Calculate row itself using formula
# Overall complexity: Time: O(a^2) - Space: O(a)
class Solution
  # @param a : integer
  # @return an array of integers
  def getRow(a) 
    row = [1]
    (1..a).each do |col|
      num = (row[-1] * (a + 1 - col) / col.to_f).round
      # num = (row[col - 1] * (a + 1 - col) / col.to_f).round
      row.push(num)
    end

    row
  end
end
