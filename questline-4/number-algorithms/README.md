# Number Algorithms & String Manipulation

This folder contains Python solutions for classic algorithmic problems covering numeric transformations, string parsing, pattern mapping, and palindrome validation.

## Solutions Overview

### 1. Palindrome Number (`palindrome.py`)
* **Problem:** Check if an integer reads the same backward as forward.
* **Approach:** Convert the integer to a string and use string slicing (`[::-1]`) to check equality. Negative numbers immediately return `False`.
* **Complexity:** Time: $O(\log_{10} n)$ | Space: $O(1)$

### 2. Integer to Roman (`int_to_roman.py`)
* **Problem:** Convert a given integer into its Roman numeral representation.
* **Approach:** Greedy matching against a ordered mapping table of Roman numeral values (including subtractive combinations like `IV`, `IX`, `XL`, etc.) from largest to smallest.
* **Complexity:** Time: $O(1)$ | Space: $O(1)$