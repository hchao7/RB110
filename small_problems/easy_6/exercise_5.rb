=begin
Write a method that takes an Array as an argument, 
and reverses its elements in place; that is, mutate 
the Array passed into this method. The return value 
should be the same Array object.
You may not use Array#reverse or Array#reverse!.

# PROBLEM
- Input: Takes in an array 
- Output: A different array, with the elements of the first reserved
- Requirements: 
  1. You cannot use Array#reverse or Array#reverse!

# EXAMPLES
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

# DATA STRUCTURES
        0  1  2
list = [1, 3, 2]
            
            0  1  2
new_list = [2, 3, 1]

# ALGORITHM
# Iterate through the array, starting from the back > #each_with_object
  # Add each element to a new array
# Return new array

# CODE
=end

def reverse(array)
  array.each_with_object([]) do |element, new_array|
    new_array.prepend(element)
  end
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

puts list = [1, 3, 2]                      # => [1, 3, 2]
puts new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true