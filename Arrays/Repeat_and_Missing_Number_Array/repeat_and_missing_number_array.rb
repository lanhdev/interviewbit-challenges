# https://www.interviewbit.com/problems/repeat-and-missing-number-array

class Solution
  # @param a : constant array of integers
  # @return an array of integers
  def repeatedNumber(a)
    n = a.size
    sumN = n * (n + 1) / 2
    sum2N = n * (n + 1) * (2 * n + 1) / 6
    sumA = 0
    sum2A = 0
    a.each do |num|
      sumA += num
      sum2A += num ** 2
    end

    y = (((sum2N - sum2A) / (sumN - sumA)) + (sumN - sumA)) / 2
    x = y - sumN + sumA

    [x, y]
  end
end
