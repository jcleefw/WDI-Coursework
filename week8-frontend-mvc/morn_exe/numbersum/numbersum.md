##Subtract Sum Numbers

###Objective

Given an array of floating point numbers, find the **alternating sum** -- subtract the odd indices from the even indices.

###Input

An array of at least one floating point number.

###Ouput

A floating point number.

###Examples

  Input: [5.0, 4.0, 3.0, 2.0, 1.0]
  Output: 3.0
  (3.0 = 5.0 - 4.0 + 3.0 - 2.0 + 1.0)

  Input: [100.7, -1.3, 10.0, 0.1]
  Output: 111.9
  (111.9 = 100.7 - (-1.3) + 10.0 - 0.1)

###Fun Fact

A number is divisible by 11 if and only if the alternating sum of its digits is also divisible by 11!

Examples:

  n = 121. 1 - 2 + 1 = 0. (0 is divisible by 11, so 11 divides n.)
  n = 133518. 1 - 3 + 3 - 5 + 1 - 8 = -11. -11 = 1 - 1 = 0.
  n = 133522193563. 1 - 3 + 3 - 5 + 2 - 2 + 1 - 9 + 3 - 5 + 6 - 3 = -11. -11 = 1 - 1 = 0.


