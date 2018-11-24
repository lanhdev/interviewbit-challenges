# https://www.interviewbit.com/problems/max-sum-contiguous-subarray

# Solution: return max sum subarray
class Solution
  # @param a : constant array of integers
  # @return an integer
  def maxSubArray(a)
    n = a.size
    largest = -1e9.to_i
    sum = 0
    (0...n).to_a.each do |idx|
      sum += a[idx]
      if sum > largest
        largest = sum
      end
      if sum < 0
        sum = 0
      end
    end

    largest
  end
end

# Solution: modify to print the subarray
class Solution
  # @param a : constant array of integers
  # @return an integer
  def maxSubArray(a)
    n = a.size
    largest = -1e9.to_i
    sum = 0
    left = 0
    right = 0
    start = 0
    (0...n).to_a.each do |idx|
      sum += a[idx]
      if sum > largest
        largest = sum
        left = start
        right = idx
      end
      if sum < 0
        sum = 0
        start = idx + 1
      end
    end

    a[left..right]
  end
end
