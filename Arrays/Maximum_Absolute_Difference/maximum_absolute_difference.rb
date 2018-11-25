# https://www.interviewbit.com/problems/maximum-absolute-difference

class Solution
  # @param a : array of integers
  # @return an integer
  def maxArr(a)
    n = a.length
    plus = Array.new(n, 0) # Store (a[i] + i) for each i
    diff = Array.new(n, 0) # Store (a[i] - i) for each i
    a.each_with_index do |num, idx|
      plus[idx] = num + idx
      diff[idx] = num - idx
    end

    [(plus.max - plus.min).abs, (diff.max - diff.min).abs].max
  end
end
