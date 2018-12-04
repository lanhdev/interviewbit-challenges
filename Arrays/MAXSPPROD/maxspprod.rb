# https://www.interviewbit.com/problems/maxspprod

class Solution
  # @param a : array of integers
  # @return an integer
  def maxSpecialProduct(a)
    n = a.size
    left_special_value = Array.new(n, 0)
    right_special_value = Array.new(n, 0)
    left_stack = []
    right_stack = []
    0.upto(n - 1).each do |idx|
      while !left_stack.empty? && a[idx] >= a[left_stack[-1]] do
        left_stack.pop
      end
      left_special_value[idx] = left_stack.empty? ? 0 : left_stack[-1]
      left_stack.push(idx)
    end

    (n - 1).downto(0).each do |idx|
      while !right_stack.empty? && a[idx] >= a[right_stack[-1]] do
        right_stack.pop
      end
      right_special_value[idx] = right_stack.empty? ? 0 : right_stack[-1]
      right_stack.push(idx)
    end

    max_prod = 0
    mod = (1e9 + 7).to_i
    (0...n).each do |idx|
      max_prod = [max_prod, left_special_value[idx] * right_special_value[idx]].max
    end

    max_prod % mod
  end
end
