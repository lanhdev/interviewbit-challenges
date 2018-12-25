# https://www.interviewbit.com/problems/implement-power-function

class Solution:
  # @param x : integer
  # @param n : integer
  # @param d : integer
  # @return an integer
  def pow(self, x, n, d):
    if n < 0:
      n = -n
      x = 1 / x
    # Initialize the result
    res = 1 % d
    while n > 0:
      # in case n is odd, multiply result with x
      if n % 2 == 1:
        res = (res * x) % d
      # n must be even, divide by 2
      n = n // 2
      # change x to x ^ 2
      x = (x * x) % d
    return res

class Solution:
  # @param x : integer
  # @param n : integer
  # @param d : integer
  # @return an integer
  def pow(self, x, n, d):
    if n < 0:
      n = -n
      x = 1 / x
    res = 1 % d
    base = x
    while n > 0:
      # We need (base ** n) % d. 
      # Now there are 2 cases:
      # 1) n is even. Then we can make base = base^2 and n = n / 2.
      # 2) n is odd. So we need base * base^(n-1)
 
      # n is odd
      if n % 2 == 1:
        res = res * base % d
        n -= 1
      # n is even
      else:
        base = base * base % d
        n /= 2
    if res < 0:
      res = (res + d) % d
    return res

