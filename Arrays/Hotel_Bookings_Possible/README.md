# Hotel Bookings Possible

## Problem:
[https://www.interviewbit.com/problems/hotel-bookings-possible](https://www.interviewbit.com/problems/hotel-bookings-possible)

A hotel manager has to process `N` advance bookings of rooms for the next season. His hotel has `K` rooms. Bookings contain an arrival date and a departure date. He wants to find out whether there are enough rooms in the hotel to satisfy the demand. Write a program that solves this problem in time `O(NlogN)`.

Input:

First list for arrival time of booking.

Second list for departure time of booking.

Third is K which denotes count of rooms.

Output:

A boolean which tells whether its possible to make a booking.

Return 0/1 for C programs.

O -> No there are not enough rooms for N booking.

1 -> Yes there are enough rooms for N booking.

**_Example:_**

**Input:**
```
Arrivals: [1 3 5]
Departures: [2 6 8]
K: 1
```
**Output:**
```
False / 0
At day = 5, there are 2 guests in the hotel. But I have only one room.
```

## Approach:

From example, we have an idea to keep track number of booked rooms per day
```
arrivals = [1, 3, 5]
departures = [2, 6, 10]

Day 1: +1 booking
Day 2: -1 booking
Day 3: +1 booking
Day 6: -1 booking
Day 5: +1 booking
Day 10: -1 booking
```

The solution would be to iterate over those events and to either increment or decrement a counter.

If at some point, the counter is greater than `K`, we return `false`.

Yet, to iterate over this collection of events we need it to be **_sorted_**.


## Reference:
* [Solving Algorithmic Problems: Possible Hotel Bookings](https://medium.com/solvingalgo/solving-algorithmic-problems-possible-hotel-bookings-fa3a544c6683)
* [GeeksforGeeks - Find if k bookings possible with given arrival and departure times](https://www.geeksforgeeks.org/find-k-bookings-possible-given-arrival-departure-times)
