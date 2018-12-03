# https://www.interviewbit.com/problems/maximum-unsorted-subarray

# Sorting and compare
class Solution
  # @param a : array of integers
  # @return an array of integers
  def subUnsort(a)
    sorted = a.sort
    return [-1] if sorted == a
    length = a.size
    left = -1
    right = -1
    0.upto(length - 1).each do |idx|
      if a[idx] != sorted[idx]
        left = idx
        break
      end
    end

    (left + 1).upto(length - 1).each do |idx|
      if a[idx] != sorted[idx]
        right = idx
      end
    end

    [left, right]
  end
end

# Traverse throught array
class Solution
  # @param a : array of integers
  # @return an array of integers
  def subUnsort(a)
    length = a.size
    left = -1
    right = -1

    0.upto(length - 2).each do |idx|
      if a[idx] > a[idx + 1]
        left = idx
        break
      end
    end

    (length - 1).downto(1).each do |idx|
      if a[idx] < a[idx - 1]
        right = idx
        break
      end
    end

    return [-1] if left == -1 && right == -1

    minimum = a[left..right].min
    maximum = a[left..right].max

    0.upto(left - 1).each do |idx|
      if a[idx] > minimum
        left = idx
        break
      end
    end

    (length - 1).downto(right + 1).each do |idx|
      if a[idx] < maximum
        right = idx
        break
      end
    end

    [left, right]
  end
end

a = [10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60]
b = [0, 1, 15, 25, 6, 7, 30, 40, 50]
c = [1, 2, 3, 4, 5]
p Solution.new.subUnsort(a)
p Solution.new.subUnsort(b)
p Solution.new.subUnsort(c)
