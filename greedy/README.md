# Greedy Algorithms

## 1. Lemonade Change

### Approach
Keep track of the number of $5 and $10 bills.
For a $10 bill, give one $5 as change.
For a $20 bill, preferably give $10 + $5, otherwise give three $5 bills.

### Time Complexity
O(n)

### Space Complexity
O(1)

---

## 2. Assign Cookies

### Approach
Sort the children and cookies.
Give the smallest suitable cookie to the least greedy child.
Continue until all cookies are checked.

### Time Complexity
O(n log n + m log m)

### Space Complexity
O(1) auxiliary space