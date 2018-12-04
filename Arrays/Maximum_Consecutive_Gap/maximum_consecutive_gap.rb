# https:#www.interviewbit.com/problems/maximum-consecutive-gap

# Sorting
# class Solution
#   # @param a : constant array of integers
#   # @return an integer
#   def maximumGap(a)
#     n = a.size
#     return 0 if n < 2
#     a = a.sort
#     prev_num = a.first
#     max_gap = -1
#     1.upto(n - 1).each do |idx|
#       dist = a[idx] - prev_num
#       max_gap = [max_gap, dist].max
#       prev_num = a[idx]
#     end

#     max_gap
#   end
# end

class Solution
  # @param a : constant array of integers
  # @return an integer
  def maximumGap(a)
    n = a.size
 
    # Find maximum and minimum in a[]
    max_a = a.max
    min_a = a.min
    return max_a - min_a if max_a - min_a < 2
 
    # Arrays to store maximum and minimum values in n - 1 buckets of differences.
    max_bucket = Array.new(n, -1)
    min_bucket = Array.new(n, Float::INFINITY)
 
    # The minimum possible gap or expected gap for every bucket
    min_gap = [1, (max_a - min_a) / n].max
 
    # Traversing through array elements and
    # filling in appropriate bucket if bucket is empty.
    # Else updating bucket values.
    a.each do |num|
      # Finding index of bucket.
      idx = [(num - min_a) / min_gap, n - 1].min
 
      # Filling/Updating maximum value of bucket
      max_bucket[idx] = [max_bucket[idx], num].max
 
      # Filling/Updating minimum value of bucket
      min_bucket[idx] = [min_bucket[idx], num].min
    end

    p max_bucket
    p min_bucket
 
    # Finding maximum difference between maximum value 
    # of previous bucket minus minimum of current bucket. 
    max_gap = 0
    prev_max = max_bucket.first
    (1...n).each do |i|
      next if min_bucket[i] == Float::INFINITY
      max_gap = [min_bucket[i] - prev_max, max_gap].max
      prev_max = max_bucket[i]
    end
 
    max_gap
  end
end
