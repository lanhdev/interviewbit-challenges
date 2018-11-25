# https://www.interviewbit.com/problems/arraybug

class MySolution:
  # @param a : list of integers
  # @param b : integer
  # @return a list of integers
  def rotateArray(self, a, b):
    ret = []
    for i in xrange(b):
      first = a.pop(0)
      ret = a
      ret.append(first)
    return ret

class IBSolution:
  # @param a : list of integers
  # @param b : integer
  # @return a list of integers
  def rotateArray(self, a, b):
    ret = []
    for i in xrange(len(a)):
      ret.append(a[(i + b) % len(a)])
    return ret
