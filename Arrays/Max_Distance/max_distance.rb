# https://www.interviewbit.com/problems/max-distance

# Sorting: O(NlogN)
class Solution
  # @param a : constant array of integers
  # @return an integer
  def maximumGap(a)
    n = a.size
    index = (0...n).to_a
    index.sort_by! { |idx| a[idx] }
    
    max_index_from_i = Array.new(n, index[-1])
    (n - 2).downto(0).each do |idx|
      max_index_from_i[idx] = [max_index_from_i[idx + 1], index[idx]].max
    end

    max_distance = 0
    (0...n).each do |idx|
      max_distance = [max_distance, max_index_from_i[idx] - index[idx]].max
    end

    max_distance
  end
end

class Solution
  # @param a : constant array of integers
  # @return an integer
  def maximumGap(a)
    n = a.size
    left_min = Array.new(n, 0)
    right_max = Array.new(n, 0)

    left_min[0] = a.first
    1.upto(n - 1).each do |idx|
      left_min[idx] = [a[idx], left_min[idx - 1]].min
    end

    right_max[n - 1] = a.last
    (n - 2).downto(0).each do |idx|
      right_max[idx] = [a[idx], right_max[idx + 1]].max
    end

    max_distance = 0
    left = 0
    right = 0
    while left < n && right < n do
      if left_min[left] <= right_max[right]
        max_distance = [max_distance, right - left].max
        right += 1
      else
        left += 1
      end
    end

    max_distance
  end
end
