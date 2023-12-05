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

TOTAL_MIN = 1440

def time_of_day(minutes)
  reduced_minutes = minutes % TOTAL_MIN
  reduced_minutes = 1440 + reduced_minutes if reduced_minutes.negative?
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