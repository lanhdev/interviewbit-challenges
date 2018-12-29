# https://www.interviewbit.com/problems/reverse-the-string

# Python built-in function
# class Solution:
#   # @param A : string
#   # @return string
#   def reverseWords(self, A):
#     A = A.split()
#     A.reverse()
#     return ' '.join(A)

# Reverse in space
class Solution:
  # @param A : string
  # @return string
  def reverseWords(self, A):
    left = -1
    right = len(A) - 1
    res = ''
    while right >= 0:
      while right >= 0 and A[right] == ' ':
        right -= 1
      
      res += ' '
      left = right

      while left >= 0 and A[left] != ' ':
        left -= 1
      
      res += A[left+1:right+1]
      right = left
    return res.strip()
