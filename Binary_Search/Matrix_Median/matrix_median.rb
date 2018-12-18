# https://www.interviewbit.com/problems/matrix-median

# Ruby built-in functions
class Solution
  # @param a : array of array of integers
  # @return an integer
  def findMedian(a)
    a.flatten!.sort[a.size/2]
  end
end

# Binary search
class Solution
  # @param a : array of array of integers
  # @return an integer
  def findMedian(a)
    row = a.size
    col = a[0].size
    min = a[0][0]
    max = 0
    (0...row).each do |i|
      min = a[i][0] if a[i][0] < min
      max = a[i][col - 1] if a[i][col - 1] > max
    end

    desired = (row * col + 1) / 2

    while min < max
      mid = (min + max) / 2
      count = 0

      # Find count of elements smaller than mid
      (0...row).each do |i|
        count += upper_bound(a[i], mid)
      end
      if count < desired
        min = mid + 1
      else
        max = mid
      end
    end
    min
  end

  private

  def upper_bound(arr, target)
    left = 0
    right = arr.size - 1
    while left <= right
      mid = (left + right) / 2
      if arr[mid] <= target
        left = mid + 1
      else
        right = mid - 1
      end
    end

    if arr[left] && arr[left] > target
      return left
    elsif left > arr.size - 1
      return arr.size
    else
      return 0
    end
  end
end
