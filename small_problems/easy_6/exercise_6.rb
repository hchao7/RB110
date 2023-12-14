=begin
Write a method that takes two Arrays as arguments,
and returns an Array that contains all of the values 
from the argument Arrays. There should be no duplication 
of values in the returned Array, even if there are duplicates 
in the original Arrays.

# PEDAC
# PROBLEM
- Input: 2 Arrays
- Output: Values from argument arrays in ONE array
- Requirements:
  1. No duplication of values, even if there are duplicates in the original

# EXAMPLE
   [1, 3, 5]
   [3, 6, 9]
 > [1, 3, 5, 6, 9]

# DATA STRUCTURE
    0  1  2
   [1, 3, 5]

    0  1  2
   [3, 6, 9]
 > [1, 3, 5, 6, 9]

# ALGORITHM
  1. Create a duplicate array of array_1, called new_array
  2. Add to array 2
  3. Call uniq! on new_array
# CODE

Example
=end

def merge(array_1, array_2)
  new_array = array_1[0, array_1.length]
  new_array += array_2
  new_array.uniq!
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]