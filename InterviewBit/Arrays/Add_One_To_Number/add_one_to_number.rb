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

# Solution 2
class Solution
  # @param a : array of integers
  # @return an array of integers
  def plusOne(a)
    a = a.reverse
    length = a.size
    carry = 1
    (0...length).to_a.each do |i|
      sum = a[i] + carry
      a[i] = sum % 10
      carry = sum / 10
    end
    if carry == 1
      a.push(carry)
    end

    a = a.reverse
    while a.first.zero? do
      a.shift
    end
    a
  end
end
