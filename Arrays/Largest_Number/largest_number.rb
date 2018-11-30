# https://www.interviewbit.com/problems/largest-number

class Solution
  # @param a : constant array of integers
  # @return a string
  def largestNumber(a)
    return '0' if a.all?(&:zero?)
    a_str = a.map(&:to_s)
    a_str.sort! do |str1, str2|
      num1 = (str1 + str2).to_i
      num2 = (str2 + str1).to_i
      num2 <=> num1
      # if num2 > num1
      #   1
      # elsif num2 < num1
      #   -1
      # else
      #   0
      # end
    end

    a_str.join
  end
end
