# https://www.interviewbit.com/problems/n3-repeat-number

# Hashing
class Solution:
  # @param A : tuple of integers
  # @return an integer
  def repeatedNumber(self, A):
    hash = dict()
    n = len(A)
    for num in A:
      if num in hash:
        hash[num] += 1
      else:
        hash[num] = 1

    for item in hash.items():
      if item[1] > n // 3:
        return item[0]

    return -1

# Moore's Voting Algorithm
from sys import maxsize
class Solution:
  # @param A : tuple of integers
  # @return an integer
  def repeatedNumber(self, A):
    n = len(A)
    count1 = 0
    count2 = 0
    candidate1 = maxsize
    candidate2 = maxsize

    for num in A:
      # if this element has previously seen, increment count1. 
      if candidate1 == num:
        count1 += 1
      # if this element has previously seen, increment count2. 
      elif candidate2 == num:
        count2 += 1
      # if this element has not seen, add to list with count equals 1
      elif count1 == 0:
        count1 += 1
        candidate1 = num
      # if this element has not seen, add to list with count equals 1
      elif count2 == 0:
        count2 += 1
        candidate2 = num
      # if this element is difference from existing 2 elements, decrease count
      else:
        count1 -= 1
        count2 -= 1

    count1 = 0
    count2 = 0
    for num in A:
      if num == candidate1:
        count1 += 1
      elif num == candidate2:
        count2 += 1

    if count1 > n // 3:
      return candidate1

    if count2 > n // 3:
      return candidate2

    return -1
