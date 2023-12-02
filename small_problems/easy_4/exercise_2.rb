=begin
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century 
number, and ends with st, nd, rd, or th as appropriate for that
number.
New centuries begin in years that end with 01. So, the years 
1901-2000 comprise the 20th century.

# PROBLEMS
- Input: Year (arg)
- Output: Century 
  1. String that begins with century number
  2. ends with st, nd, rd, or th
- Requirements:
  New centuries begin with 01
  1901 - 2000 > 20th century
  1. Century Number
  2. Correct letter ending

# EXAMPLES
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# DATA STRUCTURE
- N/A

# SCRATCH
1. based on year > century_num
  2000/100 = 20 -> 20
  2001/100 = 20 -> 21
  1999/100 = 19 -> 20
  1901/100 = 19 -> 20
  
  (19 + 1) -> 20
  20 * 100 = 2000
  if 2000 - Current Number <= 99, then
  century_num = quotient + 1
  else
  century_num = quotient

  1900/100 = 19
  1901 -> 2000 = 20

2. 
  1 - st
  2, 3 - rd
  4, 6, 7, 8, 9, 0 - th
  
# ALGORITHM
  1. based on year > century_num
  2. based on century_num > letter_end
  3. concatenate century_num + letter_end

# CODE
def century(year)
  possible_century = year/100
  next_century = (possible_century + 1) * 100
  if next_century - year <= 99
    century_num = possible_century + 1
  else
    century_num = possible_century
  end
  
  century_str = century_num.to_s
  last_digit = century_str[century_str.length - 1]
  if last_digit == 1
    century_str += "st"
  elsif last_digit == 2 || last_digit == 3
  else

end
=end

# My Solution
def century(year)
  letter_ending_dict = {
                      '1' => 'st',
                      '2' => 'nd',
                      '3' => 'rd',
                      '4' => 'th',
                      '5' => 'th',
                      '6' => 'th',
                      '7' => 'th',
                      '8' => 'th',
                      '9' => 'th',
                      '0' => 'th'}

  possible_century = year/100
  next_century = (possible_century + 1) * 100
  if next_century - year <= 99
    century_num = possible_century + 1
  else
    century_num = possible_century
  end
  
  century_str = century_num.to_s
  str_size = century_str.size
  
  if str_size > 1 && (century_str[-2] == '1' || century_str[-2..-1] == '01')
    letter_ending = 'th'
  else
    letter_ending = letter_ending_dict[century_str[-1]]
  end

  century_str += letter_ending
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

=begin
# LS Solution
def century(year)
  century = year / 100 + 1 
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
=end