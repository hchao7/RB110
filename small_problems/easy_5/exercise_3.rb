require 'time'
=begin
As seen in the previous exercise, the time of day can 
be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, 
and return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.
You may not use ruby's Date and Time methods.

# PROBLEM 
- Input: Time of day in 24 hour format (00:00)
- Output: Number of minutes before / after midight, betweeen 0..1439
- Requirements:
  - Implicit:
  - Explicit:
    1. Return a value between 0 and 1439

# EXAMPLES
  after_midnight('00:00') == 0
  before_midnight('00:00') == 0

  after_midnight('12:34') == 754
  before_midnight('12:34') == 686

  after_midnight('24:00') == 0
  before_midnight('24:00') == 0

- DATA STRUCTURE
- ALGORITHM
# After midnight
  - Rule for conversion:
  - # of min = Multiply hours by 60, plus minute number

  1. Convert hours & minutes to number format
  2. # of min = Multiply hours by 60, plus minute number

# Before midnight
  - Rule for conversion: 
  - # of min = 1440 - after_midnight

1. Convert hours & minutes to number format
  - SET Hours = sliced string * 60, convert to int
  - SET Min = sliced string, convert to int
  - SET Total_Min = Hours + Min

def total_min(str_time)
  return 0 if str_time == '24:00'
  hours = str_time.slice!(0, 2).to_i
  hours_in_min = hours * 60
  min = str_time.slice!(1, 2).to_i
  total_min = hours_in_min + min
end

def after_midnight(str_time)
  total_min(str_time)
end

def before_midnight(str_time)
  return 0 if str_time == '24:00' || str_time == '00:00'
  1440 - total_min(str_time)
end

puts after_midnight('24:00') == 0
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts before_midnight('12:34') == 686
puts before_midnight('24:00') == 0

# LS Solution
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

How would these methods change if you were 
allowed to use the Date and Time classes?
# ALGORITHM
# CODE

=end

# parse takes a string representation of a Time and 
# attempts to parse it using a heuristic.

# after_midnight
def after_midnight_time(strtime)
  t = Time.parse(strtime)
  min = (t.hour * 60) + t.min
end 
after_midnight_time('24:00')
after_midnight_time('00:00')

def before_midnight_time(strtime)
  min = 1440 - after_midnight_time(strtime)
  min == 1440 ? 0 : min

end 

puts after_midnight_time('00:00') == 0
puts before_midnight_time('00:00') == 0
puts after_midnight_time('12:34') == 754
puts before_midnight_time('12:34') == 686
puts after_midnight_time('24:00') == 0
puts before_midnight_time('24:00') == 0

