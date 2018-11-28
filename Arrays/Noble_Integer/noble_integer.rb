# https://www.interviewbit.com/problems/noble-integer

# Brute force
class Solution # O(n * n)
  # @param a : array of integers
  # @return an integer
  def solve(a)
    n = a.size
    0.upto(n - 1).each do |i|
      count = 0
      0.upto(n - 1).each do |j|
        count += 1 if a[j] > a[i]
      end

      return 1 if count == a[i]
    end

    -1
  end
end

# Sorting
class Solution # O(n * n)
  # @param a : array of integers
  # @return an integer
  def solve(a)
    a = a.sort
    return 1 if a[-1] == 0

    n = a.size
    (0...n).each do |idx|
      next if a[idx] < 0 || a[idx] == a[idx + 1]
      return 1 if a[idx] == n - 1 - idx
    end

    -1
  end
end
