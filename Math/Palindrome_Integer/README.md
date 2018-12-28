# Palindrome Integer

## Problem:
[https://www.interviewbit.com/problems/palindrome-integer](https://www.interviewbit.com/problems/palindrome-integer)

Determine whether an integer is a palindrome. Do this without extra space.

A palindrome integer is an integer x for which reverse(x) = x where reverse(x) is x with its digit reversed.

Negative numbers are not palindromic.

Example:

**Input:**
```
1: 12121
2: 123
```

**Output:**
```
1: True
2: False
```

## Approach:

*1) Convert to string, compare first character and last character then repeat the process*

Time complexity: `O(N)`

Space complexity: `O(N)`

*2) Reverse integer then compare reverse number and original number*

Time complexity: `O(N)`

Space complexity: `O(1)`

*3) Compare in-place*
- We can compare the first digit and the last digit, then we repeat the process.
- For the first digit, we need the order of the number. Say, 12321. Dividing this by 10000 would get us the leading 1. The trailing 1 can be retrieved by taking the mod with 10.
- Now, to reduce this to 232.
```
(12321 % 10000) / 10 = 2321 / 10 = 232
```
- And now, the 10000 would need to be reduced by a factor of 100.

Time complexity: `O(N)`

Space complexity: `O(1)`

`N` is number of digits of input number

## Reference:
* [GeeksforGeeks - To check a number is palindrome or not without using any extra space](https://www.geeksforgeeks.org/check-number-palindrome-not-without-using-extra-space)
