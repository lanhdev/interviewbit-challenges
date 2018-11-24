# https://www.interviewbit.com/problems/maximum-absolute-difference

class Solution
  # @param a : array of integers
  # @return an integer
  def maxArr(a)
    n = a.length
    arr_1 = Array.new(n, 0) # Store (a[i] + i) for each i
    arr_2 = Array.new(n, 0) # Store (a[i] - i) for each i
    (0...n).to_a.each do |idx_i|
      arr_1[idx_i] = a[idx_i] + idx_i
      arr_2[idx_i] = a[idx_i] - idx_i
    end

    [(arr_1.max - arr_1.min).abs, (arr_2.max - arr_2.min).abs].max
  end
end
