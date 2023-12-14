=begin
Write a method named include? that takes an Array 
and a search value as arguments. This method 
should return true if the search value is in the 
array, false if it is not. You may not use the 
Array#include? method in your solution.

# PROBLEM
- Input: Takes an Array and a search value as arguments
- Output: Return boolean true if search value is in array, 
          false if not
- Requirements: 
  1. An empty Array and a nil search value should return false
  2. An Array with nil and a nil search val should return true

# EXAMPLES
  include?([1,2,3,4,5], 3) == true
  include?([1,2,3,4,5], 6) == false
  include?([], 3) == false
  include?([nil], nil) == true
  include?([], nil) == false

# DATA STRUCTURE

# ALGORITHM
  1. Search for the "count" of the search value 
  2. If count == 0, return false
  3. Else, return true... 

# CODE
=end

def include?(array, search_value)
  array.count(search_value) > 0 ? true : false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false