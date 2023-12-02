=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers.
In this exercise, you're going to extend that method to work with signed numbers.
Write a method that takes a String of digits, and returns the appropriate number as an integer. 
The String may have a leading + or - sign; if the first character is a +, your method should return a positive 
number; 
if it is a -, your method should return a negative number. If no sign is given, you should return a positive 
number.
You may assume the string will always contain a valid number.
You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
You may, however, use the string_to_integer method from the previous lesson.

#PROBLEM
- Input: String of digits
- Output: Return appropriate number as integer
- Requirements:
  If 1st is '+' > return positive
     2nd is '-' > return negative
    
#EXAMPLES
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

#DATA STRUCT
#ALGORITHM
  # Check first character of string
  # IF first character is +:
      Call str_to_int without first charc
  # IF first character is -:
      Call str_to_int withhout first charc, -1 * return
  # ELSE 
      Call str_to_int

#CODE

# My Solution
def string_to_integer(str)

  str_to_int = {'0' => 0,
                '1' => 1,
                '2' => 2,
                '3' => 3,
                '4' => 4,
                '5' => 5,
                '6' => 6,
                '7' => 7,
                '8' => 8,
                '9' => 9 }

  exponent = str.size - 1
  index = 0
  sum = 0
  while exponent >= 0
    integer = str_to_int[str[index]]
    sum = sum + (integer * (10**exponent))
    exponent -= 1
    index += 1
  end
  sum
end

def string_to_signed_integer(str)
  if str[0] == '+'
    string_to_integer(str[1, str.size()-1])
  elsif str[0] == '-'
    -1 * string_to_integer(str[1, str.size()-1])
  else
    string_to_integer(str)
  end
end 

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
=end

# LS Solution
=begin
In our solution, we call string[1..-1] twice, and call string_to_integer 
three times. 
This is somewhat repetitive. 
Refactor our solution so it only makes these two calls once each.
=end

def string_to_integer(str)

  str_to_int = {'0' => 0,
                '1' => 1,
                '2' => 2,
                '3' => 3,
                '4' => 4,
                '5' => 5,
                '6' => 6,
                '7' => 7,
                '8' => 8,
                '9' => 9 }

  exponent = str.size - 1
  index = 0
  sum = 0
  while exponent >= 0
    integer = str_to_int[str[index]]
    sum = sum + (integer * (10**exponent))
    exponent -= 1
    index += 1
  end
  sum
end

def string_to_signed_integer(string)
  sign = string[0]
  if sign == '-' || sign == '+' 
    num = string_to_integer(string[1..-1])
  else
    num = string_to_integer(string)
  end
  sign == '-' ? num * -1 : num
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

#  Other Solution
=begin
def string_to_signed_integer(string)
  leading_char = string.chars.first
  result = string_to_integer(string.delete('+-'))

  leading_char == '-' ? -result : result
end
=end