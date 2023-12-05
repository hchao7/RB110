=begin
Write a method that determines and returns the ASCII 
string value of a string that is passed in as an argument. 
The ASCII string value is the sum of the ASCII values of 
every character in the string. (You may use String#ord to 
determine the ASCII value of a character.)

# PROBLEM
- Input: arg = a string
- Output: sum of the ASCII values of every character in string
- Requirements:
  Use String#ord for ASCII val

# EXAMPLES
  ascii_value('Four score') == 984
  ascii_value('Launch School') == 1251
  ascii_value('a') == 97
  ascii_value('') == 0

# DATA STRUCTURE
 
# ALGORITHM
  ascii_value('Four score') == 984
  Go through each character and identify ASCII value,
  sum up each value

  Convert to chars > then use reduce to get sum

# CODE
=end

# My Solution
def ascii_value(str)
  value = str.chars.inject(0) {|sum, n| sum + n.ord }
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# LS Solution
=begin
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
=end

# Further Solution
char.ord.mystery == char
# The mystery method is #chr — if you call it on
# a string with multiple characters, #ord will give you
# the first character's ordinal value