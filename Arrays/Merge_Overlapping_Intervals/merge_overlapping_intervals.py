# https://www.interviewbit.com/problems/merge-overlapping-intervals

# Definition for an interval.
# class Interval:
#   def __init__(self, s=0, e=0):
#     self.start = s
#     self.end = e
from collections import namedtuple
Interval = namedtuple('Interval', ('start', 'end'))

class Solution:
  # @param intervals, a list of Intervals
  # @return a list of Interval
  def merge(self, intervals):
    n = len(intervals)
    intervals.sort(key=lambda i: i.start)
    merged = [intervals[0]]
    idx = 1
    while idx < n:
      cur_interval = merged[-1]
      if cur_interval.end < intervals[idx].start:
        merged.append(intervals[idx])
      elif cur_interval.end >= intervals[idx].start:
        merged.pop()
        cur_interval = Interval(
          min(cur_interval.start, intervals[idx].start),
          max(cur_interval.end, intervals[idx].end),
        )
        merged.append(cur_interval)
      idx += 1
    return merged
