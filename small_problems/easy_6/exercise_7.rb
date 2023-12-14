=begin
Write a method that takes an Array as an argument, 
and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the 
original Array, respectively. If the original array 
contains an odd number of elements, the middle element 
should be placed in the first half Array.

# PEDAC
# PROBLEM
- Input: Array as an argument
- Output: two Arrays (pair of nested Arrays) 
  - first half and second half of arrays, respectively
- Requirements: 
    1. Original array contain an odd number of elements =>
    middle element should be placed in the first half Array.
    2. If the array has only 1 element => should split into [5] and []
    3. An empty array should divide => two empty arrays [] and []

# EXAMPLE
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# DATA STRUCTURE
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]

  0   1
[[5], []]
 0  1  2  3  4
[1, 5, 2, 4, 3]
[[1, 5, 2], [4, 3]]

 0  1  2  3
[1, 2, 3, 4]
[[1, 2], [3, 4]]

# ALGORITHM
Check if length of array is even or odd
   Initialize divider_index as either (length/2) + 1 or length/2
   Initialize array as [[], []]
1. Iterate through array
2. Odd:
    If index # is < (length/2) + 1
      first array << element
    Else
      second array << element
3. Even:
    If index # is < (length/2)
      first array << element
    Else
      second array << element

# SCRATCH
# CODE
=end

def halvsies(original_array)
  array_size = original_array.length
  divider_index = array_size.even? ? (array_size/2) : (array_size/2)+1
  new_array = [[],[]]
  original_array.each_with_index do |element, index|
    if index < divider_index
     new_array[0] << element
    else 
     new_array[1] << element
    end
  end
  new_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]

