# String Manipulation

This folder contains Python solutions for classic algorithmic problems covering numeric transformations, string parsing, pattern mapping, and palindrome validation.

## Solutions Overview

### 1. Valid Palindrome (`valid_palindrome.py`)
* **Problem:** Determine if a phrase is a palindrome, considering only alphanumeric characters and ignoring cases.
* **Approach:** Filter out non-alphanumeric characters using `isalnum()`, convert characters to lowercase, and check if the sequence equals its reverse.
* **Complexity:** Time: $O(n)$ | Space: $O(n)$

### 2. Zigzag Conversion (`zigzag_conversion.py`)
* **Problem:** Write a string in a zigzag pattern across a fixed number of rows and read line-by-line.
* **Approach:** Simulate character placement using a list of string buckets and track the vertical directional movement (down and up) using a toggling boolean flag.
* **Complexity:** Time: $O(n)$ | Space: $O(n)$