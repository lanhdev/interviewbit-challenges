# https://www.interviewbit.com/problems/diffk

class Solution
  # @param a : array of integers
  # @param b : integer
  # @return an integer
  def diffPossible(a, b)
    n = a.size
    slow = 0
    fast = 1
    while slow < n && fast < n
      diff = a[fast] - a[slow]
      if slow != fast && diff == b
        return 1
      elsif diff > b
        slow += 1
      else
        fast += 1
      end
    end

    0
  end
end
