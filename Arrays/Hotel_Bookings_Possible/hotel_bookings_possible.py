# https://www.interviewbit.com/problems/hotel-bookings-possible

class Solution:
  # @param arrive : list of integers
  # @param depart : list of integers
  # @param K : integer
  # @return a boolean
  def hotel(self, arrive, depart, K):
    n = len(arrive)
    guests = []
    for i in range(n):
      guests.append((arrive[i], 1))
      guests.append((depart[i], -1))
    guests.sort()
    num_of_rooms = 0
    for guest in guests:
      num_of_rooms += guest[1]
      if num_of_rooms > K:
        return False
    return True
