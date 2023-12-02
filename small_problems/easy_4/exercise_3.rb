=begin
In the modern era under the Gregorian Calendar, leap years occur in every year 
that is evenly divisible by 4, unless the year is also divisible by 100. 
If the year is evenly divisible by 100, then it is not a leap year unless 
the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0.
Write a method that takes any year greater than 0 as input, and returns 
true if the year is a leap year, or false if it is not a leap year.

# PROBLEMS
- Input: Year (arg, greater than 0)
- Output: True/False
- Requirements
  1. Return true if year is leap year
  2. Return false if not a leap year
  3. If year evenly divisible by 4, 100 & 400 > leap year
  4. Elsif year evenly divisble by 4 & not 100 > leap year
  5. Else, not leap year

# EXAMPLES
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

# DATA STRUCTURE
- N/A
# SCRATCH
# ALGORITHM

# CODE
def leap_year?(year)
  if (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
    true
  elsif (year % 4 == 0) && (year % 100 != 0)
    true
  else
    false
end
=end

# My Solution
def leap_year?(year)
  if (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
    true
  elsif (year % 4 == 0) && (year % 100 != 0)
    true
  else
    false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

=begin
# LS Solution
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end
=end 

=begin
# Further Exploration
Can you rewrite leap_year? to perform its tests in the opposite order 
of the above solution? That is, test whether the year is divisible by 4 first,
then, if necessary, test whether it is divisible by 100, and finally, if necessary, 
test whether it is divisible by 400. Is this solution simpler or more complex than 
the original solution?

def leap_year?(year)
  if year % 4 == 0
    
    if year % 100 == 0
      return (year % 400 == 0 ? true : false)
    else
      return true
    end
  
  else
    return false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
=end