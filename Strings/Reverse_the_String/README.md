# Reverse the String

## Problem:
[https://www.interviewbit.com/problems/reverse-the-string](https://www.interviewbit.com/problems/reverse-the-string)

Given an input string, reverse the string word by word.

Example:

**Input**
```
s = "the sky is blue"
```

**Output:**
```
"blue is sky the"
```

**NOTE:**

A sequence of non-space characters constitutes a word.

Your reversed string should not contain leading or trailing spaces, even if it is present in the input string.

If there are multiple spaces between words, reduce them to a single space in the reversed string.

## Approach:

One simple approach is a two-pass solution:

- First pass to split the string by spaces into an array of words
- Second pass to extract the words in reversed order

We can do better in one-pass. While iterating the string in reverse order, we keep track the beginning and the end position of a word.

When we are at the beginning of a word, we append it.
