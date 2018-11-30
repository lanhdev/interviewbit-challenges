# Largest Number

## Problem:
[https://www.interviewbit.com/problems/largest-number](https://www.interviewbit.com/problems/largest-number)

Given a list of non negative integers, arrange them such that they form the largest number.

Example:

**Input:**
```
1: [54, 546, 548, 60]
2: [1, 34, 3, 98, 9, 76, 45, 4]
3: [3, 30, 34, 5, 9]
```
**Output:**
```
1: 6054854654
2: 998764543431
3: 9534330
```

***NOTE:** The result may be very large, so you need to return a string instead of an integer.*

## Approach:

Sorting all numbers in descending order is the simplest solution that occurs to us. But this doesn’t work.

For example, `548` is greater than `60`, but in the output, `60` comes before `548`. As a second example, `98` is greater than `9`, but `9` comes before `98` in the output.

The solution is to use any comparison based **_sorting_** algorithm. Thus, instead of using the default comparison, write a comparison function `myCompare()` and use it to sort numbers.

Given two numbers `X` and `Y`, how should `myCompare()` decide which number to put first – we compare two numbers `XY` (`Y` appended at the end of `X`) and `YX` (`X` appended at the end of `Y`).

If `XY` is larger, then, in the output, `X` should come before `Y`, else `Y` should come before `X`.

For example, let `X` and `Y` be `542` and `60`. To compare `X` and `Y`, we compare `54260` and `60542`. Since `60542` is greater than `54260`, we put `Y` first.


## Reference:
* [GeeksforGeeks - Arrange given numbers to form the biggest number | Set 1](https://www.geeksforgeeks.org/given-an-array-of-numbers-arrange-the-numbers-to-form-the-biggest-number)
* [GeeksforGeeks - Arrange given numbers to form the biggest number | Set 2](https://www.geeksforgeeks.org/arrange-given-numbers-form-biggest-number-set-2)
