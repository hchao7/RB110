=begin
In the previous exercise, you developed a method that
converts non-negative numbers to strings. In this exercise, 
you're going to extend that method by adding the ability to 
represent negative numbers as well.
Write a method that takes an integer, and converts it to a string 
representation.
You may not use any of the standard conversion methods available in Ruby, 
such as Integer#to_s, String(), Kernel#format, etc. You may, however, 
use integer_to_string from the previous exercise.

# PROBLEM
- Input
  arg: any integer
- Output
  string representation, with sign
- Requirements

# EXAMPLES
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

# SCRATCH
  DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  array_of_str = num.digits.reverse.map { |element| DIGITS[element] }
  array_of_str.join
end 

integer_to_string(num) -> string form
case num is positive
elsif num is negative
else

# DATA STRUCT
# ALGORITHM
# CODE
=end 

# My Solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  array_of_str = num.digits.reverse.map { |element| DIGITS[element] }
  array_of_str.join
end

def signed_integer_to_string(num)
  str = integer_to_string(num.abs)
  if num > 0
    str.prepend('+')
  elsif num < 0
    str.prepend('-')
  else
    str
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'

# LS Solution
=begin
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  array_of_str = num.digits.reverse.map { |element| DIGITS[element] }
  array_of_str.join
end 

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(number.abs)}"
  when +1 then "+#{integer_to_string(number.abs)}"
  else         integer_to_string(number)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
=end

# Further Exploration
# Refactor solution to reduce the number of method calls
=begin
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  array_of_str = num.digits.reverse.map { |element| DIGITS[element] }
  array_of_str.join
end 

def signed_integer_to_string(number)
  sign = case number <=> 0
  when -1 then "-"
  when +1 then "+"
  else         ""
  end

  "#{sign}#{integer_to_string(number.abs)}"
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
=end