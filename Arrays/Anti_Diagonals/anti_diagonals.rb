# https://www.interviewbit.com/problems/anti-diagonals

# My approach
class Solution
  # @param a : array of array of integers
  # @return an array of array of integers
  def diagonal(a)
    n = a.size
    num_rows = 2 * n - 1
    result = []
    (0...num_rows).each do |i|
      row = []
      if i < n
        0.upto(i).each do |j|
          row.push(a[j][i - j])
        end
      else
        (i - n + 1).upto(n - 1) do |j|
          row.push(a[j][i - j])
        end
      end
      result.push(row)
    end
    result
  end
end

# InterviewBit
class Solution
  # @param a : array of array of integers
  # @return an array of array of integers
  def diagonal(a)
    n = a.size
    result = []
    (0...n).each do |i|
      (0...n).each do |j|
        sum = i + j
        result[sum] ||= []
        result[sum].push(a[i][j])
      end
    end

    result
  end
end

# Practice 2 Code
class Solution
  # @param a : array of array of integers
  # @return an array of array of integers
  def diagonal(a)
    n = a.size
    result = []
    max_sum = 2 * (n - 1)
    (0..max_sum).each do |d|
      row = []
      (0..d).each do |i|
        j = d - i
        next if i >= n || j >= n
        row.push(a[i][j])
      end
      result.push(row)
    end

    result
  end
end

a = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
p Solution.new.diagonal(a)
