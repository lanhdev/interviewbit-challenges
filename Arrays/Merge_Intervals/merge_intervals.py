# https:#www.interviewbit.com/problems/merge-intervals

# Definition for an interval.
# class Interval:
#   def __init__(self, s=0, e=0):
#     self.start = s
#     self.end = e

# Two pointers
class Solution:
  # @param intervals, a list of Intervals
  # @param new_interval, a Interval
  # @return a list of Interval
  def insert(self, intervals, new_interval):
    start = new_interval.start
    end = new_interval.end
    right = left = 0
    while right < len(intervals):
      if start <= intervals[right].end:
        if end < intervals[right].start:
          break
        start = min(start, intervals[right].start)
        end = max(end, intervals[right].end)
      else:
        left += 1
      right += 1
    return intervals[:left] + [Interval(start, end)] + intervals[right:]

class Solution:
  # @param intervals, a list of Intervals
  # @param new_interval, a Interval
  # @return a list of Interval
  def insert(self, intervals, new_interval):
    n = len(intervals)
    idx, res = 0, []
    while idx < n and new_interval.start > intervals[idx].end:
      res.append(intervals[idx])
      idx += 1
    
    while idx < n and new_interval.end >= intervals[idx].start:
      new_interval = Interval(
        min(new_interval.start, intervals[idx].start),
        max(new_interval.end, intervals[idx].end)
      )
      idx += 1
    return res + [new_interval] + intervals[idx:]
