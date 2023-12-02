=begin
Write a method that takes two strings as arguments, 
determines the longest of the two strings, and then returns 
the result of concatenating the shorter string, the longer string, 
and the shorter string once again. You may assume that the strings 
are of different lengths.

# PROBLEM
- Input: Two strings as arguments (diff length)
- Output: Concatenated string > shorter_longer_shorter
- Requirements: Determine the longest of the strings 

# EXAMPLES
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# DATA STRUCTURE
- N/A

# ALGORITHM
- if string_one < string_two
    string_one + string_two + string_one
- else
    string_two + string_one + string_two

# CODE
def method(string_one, string_two)
  if string_one.length < string_two.length
    string_one + string_two + string_one
  else
    string_two + string_one + string_two
  end
end 
=end

# My Solution
def short_long_short(string_one, string_two)
  if string_one.length < string_two.length
    string_one + string_two + string_one
  else
    string_two + string_one + string_two
  end
end 

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"