=begin
Write a method that takes an Array of numbers, and 
returns an Array with the same number of elements, 
and each element has the running total from the original Array.

# PROBLEM
- Input: Array of numbers
- Output: Array with same number of elements, 
          each element = running total
- Requirements:
  1. [2, 5, 13]
  2. [2, 2+5 = 7, 7+13 = 20]

# EXAMPLE
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# DATA STRUCTURE
# ALGORITHM
# CODE
=end

# My Solution
def running_total(array)
  running_total = []
  array.inject(0) do |sum, n|
    sum = sum + n 
    running_total.push(sum)
    sum
  end
  running_total
end

# LS Solution (using map)
def running_total(array)
  sum = 0
  running_total = array.map do |element|
    sum = sum + element
  end
  running_total
end
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []