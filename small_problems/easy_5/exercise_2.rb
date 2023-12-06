=begin
The time of day can be represented as the number 
of minutes before or after midnight. If the number 
of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is 
before midnight.
Write a method that takes a time using this minute-based 
format and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.
You may not use ruby's Date and Time classes.

PROBLEM:
- Input: arg - time (minute based format)
- Output: hour format
- Requirements
  1. arg is + => after midnight
  2. arg is - => before mid
  3. work with any integer input

Examples:
at midnight:     time_of_day(0) == "00:00" 
before midnight: time_of_day(-3) == "23:57"
after midnight:  time_of_day(35) == "00:35"
before midnight: time_of_day(-1437) == "00:03"
after midnight:  time_of_day(3000) == "02:00"
after midinght:  time_of_day(800) == "13:20"
before midnight: time_of_day(-4231) == "01:29"

1. Understand the examples
2. Calculate the number of minutes in a day 
   24 hours * 60 minutes = 1440 minutes
   reduce number so it's within the 1440 minutes range 
   once you get the number...
   if the number is negative >> subtract from 1440, get the
   positive version
   if the number is positive >> keep as is 
   quotiient(hour), remainder(minutes) = num moddiv 60

DATA STRUCTURE:
ALGORITHM:
CODE:
=end

# My Solution
=begin
TOTAL_MIN = 1440

def time_of_day(minutes)
  #reduced_minutes = minutes % TOTAL_MIN
  #reduced_minutes = 1440 + reduced_minutes if reduced_minutes.negative?
  reduced_minutes = minutes < 0 ? (1440 + (minutes % -1440)) : (minutes % 1440)
  time = reduced_minutes.divmod(60)
  hours = time[0] < 10 ? "0#{time[0]}" : "#{time[0]}"
  min = time[1] < 10 ? "0#{time[1]}" : "#{time[1]}"
  "#{hours}:#{min}"

end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# LS Solution
=begin
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

# Further Exploration
In fact, it's possible to write a single calculation with % that performs the 
entire normalization operation in one line of code. Give it a try, but don't 
spend too much time on it.

How would you approach this problem if you were allowed to 
use ruby's Date and Time classes?

# PROBLEM
# Use the Time Class

# EXAMPLES
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# DATA STRUCTURES
# ALGORITHM
  # Using Time.new && Time.+ method
  # SET t = Time.new(00:00)
  # ADD to t by using + method

SECONDS_PER_MIN = 60
def time_of_day(min)
  t = Time.new(1)
  t = t + SECONDS_PER_MIN * min
  format('%02d:%02d', t.hour, t.min)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
=end

=begin
How would you approach this problem if you were 
allowed to use ruby's Date and Time classes and 
wanted to consider the day of week in your calculation? 
(Assume that delta_minutes is the number of minutes 
before or after midnight between Saturday and Sunday; 
in such a method, a delta_minutes value of -4231 would 
  need to produce a return value of Thursday 01:29.)

# PROBLEM
  Time.strptime(...)
# EXAMPLES
# DATA STRUCTURES
# ALGORITHM
# CODE
=end
