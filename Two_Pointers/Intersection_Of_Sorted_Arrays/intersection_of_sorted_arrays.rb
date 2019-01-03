# https://www.interviewbit.com/problems/intersection-of-sorted-arrays

class Solution
  # @param a : constant array of integers
  # @param b : constant array of integers
  # @return an array of integers
  def intersect(a, b)
    left = 0
    right = 0
    res = []
    while left < a.size && right < b.size
      if a[left] < b[right]
        left += 1
      elsif a[left] > b[right]
        right += 1
      else
        res.push(a[left])
        left += 1
        right += 1
      end
    end

    res
  end
end
