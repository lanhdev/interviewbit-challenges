# FizzBuzz

## Problem:
[https://www.interviewbit.com/problems/fizzbuzz](https://www.interviewbit.com/problems/fizzbuzz)
Fizzbuzz is one of the most basic problems in the coding interview world. Try to write a small and elegant code for this problem. 

Given a positive integer `A`, return an array of strings with all the integers from `1` to `N`. 

But for multiples of `3` the array should have "Fizz" instead of the number. 

For the multiples of `5`, the array should have "Buzz" instead of the number. 

For numbers which are multiple of `3` and `5` both, the array should have "FizzBuzz" instead of the number.

Look at the example for more details.

Example:

**Input:**
```
A = 5
```

**Output:**
```
[1 2 Fizz 4 Buzz]
```

## Approach:

While iterating from `1` to `N`, you need to check the following conditions in sequence:

-Check whether the number is divisible by `3` and `5`, if that is the case, print "FizzBuzz".

-Check whether the number is divisible by `3`, in that case, print "Fizz".

-Next, check whether the number is divisible by `5`, in that case print "Buzz".

-Otherwise, print the number.

Time Complexity: `O(N)`
Space Complexity: `O(N)`
