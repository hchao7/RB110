=begin
Write a method that takes a floating point number 
that represents an angle between 0 and 360 degrees 
and returns a String that represents that angle in 
degrees, minutes and seconds. You should use a 
degree symbol (°) to represent degrees, a single quote (') to 
represent minutes, and a double quote (") to represent 
seconds. A degree has 60 minutes, while a minute has 
60 seconds.

# PROBLEM
- Input: Floating point number
- Output: String that represents angle in deg, min, sec
- Requirements: 
  Explicit:
    deg = 60 min
    min = 60 sec
  Implicit: 

# EXAMPLES:
  dms(30) == %(30°00'00")
  dms(76.73) == %(76°43'48")
  dms(254.6) == %(254°36'00")
  dms(93.034773) == %(93°02'05")
  dms(0) == %(0°00'00")
  dms(360) == %(360°00'00")
  dms(360) == %(0°00'00")

# DATA STRUCTURES
  dms(76.73) == %(76°43'48")

  CONSTANT NUM_OF_SEC_IN_DEG = 3600
  CONSTANT NUM_OF_SEC_IN_MIN = 60
  1. Initialize total_sec = num * 3600
  76.73 * 3600 = 276228 total seconds
  2. total-sec divmod NUM_OF_SEC_IN_DEG  
      initialize degrees, min-sec
    276228/3600 = 76 (degrees)
    276228%3600 = 2628
  3. min-sec divmod NUM_OF_SEC_IN_DEG
      initialize min, sec
    2628/60     = 43 (min)
    2628%60     = 48 (sec)

# ALGORITHMS
  1. Convert into seconds
  2. Convert from seconds > min 
  3. Convert from min > degrees 
# CODE
=end

SEC_IN_DEG = 3600
SEC_IN_MIN = 60
DEGREE = "\xC2\xB0"

def dms(num)
 num = num % 360
 total_seconds = num * 3600
 degrees, min_sec = total_seconds.divmod(SEC_IN_DEG)
 min, sec = min_sec.divmod(SEC_IN_MIN)
 format("%.2d#{DEGREE}%.2d\'%.2d\"", degrees, min, sec)
end

# puts dms(30) == %(30°00'00")
# puts dms(76.73) == %(76°43'48")
# puts dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
# puts dms(0) == %(0°00'00")
# puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# puts dms(400) == %(40°00'00")
# puts dms(-40) == %(320°00'00")
# puts dms(-420) == %(300°00'00")

