# https://www.interviewbit.com/problems/flip

class Solution
  # @param a : string
  # @return an array of integers
  def flip(a)
    return [] unless a.include?('0')

    a_split = a.chars.map(&:to_i)
    a_split.each_with_index do |num, idx|
      a_split[idx] = num.zero? ? 1 : -1
    end

    largest = -Float::INFINITY
    sum = 0
    left = 0
    right = 0
    start = 0
    a_split.each_with_index do |num, idx|
      sum += num
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

    [left + 1, right + 1]
  end
end
