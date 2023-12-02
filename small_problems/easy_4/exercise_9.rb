=begin
In the previous two exercises, you developed methods 
that convert simple numeric strings to signed Integers. 
In this exercise and the next, you're going to reverse those methods.
Write a method that takes a positive integer or zero, and converts 
it to a string representation.
You may not use any of the standard conversion methods available in Ruby, 
such as Integer#to_s, String(), Kernel#format, etc. Your method should do 
this the old-fashioned way and construct the string by analyzing and
 manipulating the number.

# PROBLEM
- Input
  arg: positive int or 0
- Output
  string representation
- Requirements

# EXAMPLES
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# SCRATCH
  (dividend) (10) (digit)
  4321 % 10 = 1
  432  % 10 = 2
  43   % 10 = 3
  4 - stop when quotient is < 10

  initialize quotient, digit, dividend, str
  while quotient is > 10
    digit = dividend % 10 
    dividend = dividend/10
    convert digit to str using hash
    add str to str
  end 
  convert dividend to str
  add str to str

# DATA STRUCT
# ALGORITHM
# CODE

# My Solution
def integer_to_string(num)

  int_to_str = {0 => '0',
                1 => '1',
                2 => '2',
                3 => '3',
                4 => '4',
                5 => '5',
                6 => '6',
                7 => '7',
                8 => '8',
                9 => '9' }

  dividend = num
  str = ''
  while dividend >= 10
    digit = dividend % 10 
    dividend = dividend/10
    str.prepend(int_to_str[digit])
  end
  str.prepend(int_to_str[dividend])
end

# puts integer_to_string(4321) == '4321'
# puts integer_to_string(0) == '0'
# puts integer_to_string(5000) == '5000'

# LS Solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
=end

# Other Solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  array_of_str = num.digits.reverse.map { |element| DIGITS[element] }
  array_of_str.join
end 

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
