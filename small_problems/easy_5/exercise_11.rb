=begin
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.

# PROBLEM
- Input:
  A positive integer
- Output: 
  A list of digits in the number
- Requirements: 

# EXAMPLES
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# DATA STRUCTURE
digit_list(444) == [4, 4, 4] 
444 -> '444' -> ['4', '4', '4']

# ALGORITHM
# Separate the digits
# Convert to a string > to.s
# Iterate through each char > each with object ([])
# Convert each char to a number > to.i
# Append to []

# CODE
=end 

def digit_list(numbers)
  string_number = numbers.to_s
  digit_array = []
  string_number.each_char do |char|
    digit_array << char.to_i
  end 
  digit_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
