=begin
Write a method that combines 2 arrays passed in as arguments
Returns a new Array that contains all elements from 
both Array arguments, with elements taken in alteration.
May assume that both input Arrays are non-empty, 
with the same number of elements.

# PROBLEM
- Input: 2 arrays passed in as arguments
- Output: a new Array that contains all elements from 
both Array arguments, with elements taken in alteration
- Requirements:
1. Assume that both input Arrays are non-empty
2. Both have the same number of elements

# EXAMPLE
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# DATA STRUCTURE

 array_1       array_2
 0  1  2     0    1    2
[1, 2, 3], ['a', 'b', 'c']
 0   1   2   3   4   5
[1, 'a', 2, 'b', 3, 'c']

# ALGORITHM
   Create new array, combined_array
1. iterate through array_1 > each_with_index
2. append element from array_1 and array_2

# CODE
=end
=begin
def interleave(array_1, array_2)
  combined_array = []
  array_1.each_with_index do |element, index|
    combined_array << element << array_2[index]
  end
  combined_array
end
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
=end

# Further Exploration
def interleave(array_1, array_2)
  array_1.zip(array_2).flatten!
end
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
