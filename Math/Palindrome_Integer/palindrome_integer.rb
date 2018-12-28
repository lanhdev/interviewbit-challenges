# https://www.interviewbit.com/problems/palindrome-integer

# Convert to string, using extra space
class Solution
  # @param a : integer
  # @return an integer
  def isPalindrome(a)
    return 0 if a < 0
    a = a.to_s
    n = a.size
    0.upto(n / 2).each do |idx|
      return 0 if a[idx] != a[n - 1 - idx]
    end

    1
  end
end

# Reverse input number then compare
class Solution
  # @param a : integer
  # @return an integer
  def isPalindrome(a)
    return 0 if a < 0
    reverse_a = reverse_integer(a)
    a == reverse_a ? 1 : 0
  end

  private

  def reverse_integer(num)
    res = 0
    while num > 0
      remainder = num % 10
      res = res * 10 + remainder
      num /= 10
    end

    res
  end
end

class Solution
  # @param a : integer
  # @return an integer
  def isPalindrome(a)
    return 0 if a < 0
    
    # Find the appropriate divisor to extract the leading digit
    divisor = 1
    while a / divisor >= 10
      divisor *= 10
    end

    while a > 0
      leading = a / divisor
      trailing = a % 10
      # If first and last digit not same return false
      return 0 if leading != trailing

      # Removing the leading and trailing digit from number
      a = (a % divisor) / 10

      # Reducing divisor by a factor of 2 as 2 digits are dropped 
      divisor = divisor / 100
    end

    1
  end
end

a = 12121
b = 123
c = -12121
p Solution.new.isPalindrome(a)
p Solution.new.isPalindrome(b)
p Solution.new.isPalindrome(c)
