# Find the index of the first name that starts with "Be”
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

=begin
# PROBLEM
- Input: array of string elements
- Output: the index of the 1st name that starts with "Be"
# EXAMPLES
- %w(Fred Barney Wilma Betty BamBam Pebbles) >> 3
# DATA STRUCTURE
- 
# ALGORITHM
- iterate through each element of the array #each_with_index
- need the index
- index into the element -> string slice
- if string slice = "BE"
    remember index

# CODE

=end