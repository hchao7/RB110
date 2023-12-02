=begin
The `String#to_i` method converts a string of numeric characters 
(including an optional plus or minus sign) to an `Integer`. 
`String#to_i` and the `Integer` constructor (`Integer()`) 
behave similarly. In this exercise, you will create a method 
that does the same thing.

Write a method that takes a String of digits, and 
returns the appropriate number as an integer. You may not use any 
of the methods mentioned above.

For now, do not worry about leading `+` or `-` signs, nor 
should you worry about invalid characters; assume all characters 
will be numeric.

You may not use any of the standard conversion methods available 
in Ruby to convert a string to a number, such as `String#to_i`,
`Integer()`, etc. Your method should do this the old-fashioned way 
and calculate the result by analyzing the characters in the string.

# PROBLEM
- Input: Takes a string of digits
- Output: Appropriate number as an integer
- Requirement: Can't use standard conversion

# EXAMPLES 
string_to_integer('4321') == 4321
string_to_integer('570') == 570

# DATA STRUCT
# ALGORITHM
1. '4321' -> sum of 4000, 300, 20, 1
2. 4000 -> 4 * 10^3
3. 300 -> 3 * 10^2
4. 20 -> 2 * 10^1
5. 1 -> 1 * 10^0

SET exponent_place = 0
SET sum = 0
CREATE hash for single digits -> hash['4'] => 4
ITERATE through each character in the string
  SET integer = hash[character]
  SET sum = sum + integer * (10 ** exponent_place)
  SET exponent_place += 1
END 

# CODE
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
  puts sum
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570
=end 

# Further Exploration
def hex_to_dec(str)
  str_to_int = {'0' => 0, '1' => 1, '2' => 2, '3' => 3,
                '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
                'C' => 12,'D' => 13,'E' => 14, 'F' => 15} 

  str.upcase!
  num_array = str.chars.map do |element|
    str_to_int[element]
  end

  sum = 0
  num_array.each do |element|
    sum = (16 * sum) + element
  end
  sum
end 

puts hex_to_dec('4321') == 17185
puts hex_to_dec('570') == 1392
puts hex_to_dec('ABC') == 2748
puts hex_to_dec('4D9f') == 19871
