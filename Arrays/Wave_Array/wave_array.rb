# https://www.interviewbit.com/problems/wave-array

# Sorting
class Solution
  # @param a : array of integers
  # @return an array of integers
  def wave(a)
    a = a.sort
    n = a.size
    0.step(n - 1, 2).each do |i|
      a[i], a[i + 1] = a[i + 1], a[i] unless a[i + 1].nil?
    end

    a
  end
end

# Traverse through array and check even position
class Solution
  # @param a : array of integers
  # @return an array of integers
  def wave(a)
    n = a.size
    0.step(n - 1, 2).each do |i|
      if i > 0 && a[i] < a[i - 1]
        a[i], a[i - 1] = a[i - 1], a[i]
      end
      if i < n - 1 && a[i] < a[i + 1]
        a[i], a[i + 1] = a[i + 1], a[i]
      end
    end

    a
  end
end
