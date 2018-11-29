# https://www.interviewbit.com/problems/triplets-with-sum-between-given-range

class Solution
  # @param a : array of strings
  # @return an integer
  def solve(a)
    numbers = a.map(&:to_f)
    n = numbers.size
    a = numbers[0]
    b = numbers[1]
    c = numbers[2]
    (3...n).each do |i|
      sum = a + b + c
      if sum > 1 && sum < 2
        return 1
      elsif sum > 2
        if a > b && a > c
          a = numbers[i]
        elsif b > a && b > c
          b = numbers[i]
        elsif c > a && c > b
          c = numbers[i]
        end
      else
        if a < b && a < c
          a = numbers[i]
        elsif b < a && b < c
          b = numbers[i]
        elsif c < a && c < b
          c = numbers[i]
        end
      end
    end

    if (a + b + c) > 1 && (a + b + c) < 2
      return 1
    else
      return 0
    end
  end
end
