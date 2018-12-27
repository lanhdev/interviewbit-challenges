# https://www.interviewbit.com/problems/reverse-integer

# Ruby built-in function
class Solution
  # @param a : integer
  # @return an integer
  def reverse(a)
    sign = a < 0 ? -1 : 1
    a = a.abs.to_s.reverse.to_i * sign
    return 0 if a < -2 ** 31 || a > 2 ** 32 - 1
    a
  end
end

# Math
class Solution
  # @param a : integer
  # @return an integer
  def reverse(a)
    res = 0
    sign = a < 0 ? -1 : 1
    a = a.abs
    while a > 0
      # last digit of a number.
      num = a % 10
      # appends the digit at the end of the number.
      res = res * 10 + num
      # the number after removing the last digit.
      a /= 10
    end
    res *= sign

    return 0 if res < -2 ** 31 || res > 2 ** 32 - 1
    res
  end
end
