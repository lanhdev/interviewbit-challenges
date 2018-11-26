# https://www.interviewbit.com/problems/max-non-negative-subarray

# Inspired from Kadane's algorithm
class Solution
  # @param a : array of integers
  # @return an array of integers
  def maxset(a)
    max_sum = 0
    left_max = -1
    right_max = -1
    current_sum = 0
    left = 0
    a.each_with_index do |num, idx|
      if num >= 0
        current_sum += num
        if (current_sum > max_sum) ||
          (current_sum == max_sum && (idx + 1 - left > right_max - left_max))
          max_sum = current_sum
          left_max = left
          right_max = idx + 1
        end
      else
        current_sum = 0
        left = idx + 1
      end
    end

    return [] if left_max == -1 || right_max == -1
    a[left_max...right_max]
  end
end

# InterviewBit
class Solution
  # @param a : array of integers
  # @return an array of integers
  def maxset(a)
    current_sum = 0
    current_start = 0
    current_length = 0
    max_sum = 0
    max_start = 0
    max_length = 0

    a.each_with_index do |num, idx|
      if num < 0
        if (current_sum > max_sum) ||
          (current_sum == max_sum && current_length > max_length)
          max_sum = current_sum
          max_start = current_start
          max_length = current_length
        end
        
        current_start = idx + 1
        current_sum = 0
        current_length = 0
      else
        current_sum += num
        current_length += 1
      end
    end

    if (current_sum > max_sum) ||
      (current_sum == max_sum && current_length > max_length)
      max_sum = current_sum
      max_length = current_length
      max_start = current_start
    end

    a[max_start, max_length]
  end
end
