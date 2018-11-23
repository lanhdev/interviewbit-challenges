# https://www.interviewbit.com/problems/add-one-to-number

# Solution 1: Quick win
class Solution
  # @param a : array of integers
  # @return an array of integers
  def plusOne(a)
    number = a.join('').to_i
    number += 1
    number.to_s.chars.map(&:to_i)
  end
end
