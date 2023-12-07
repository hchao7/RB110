=begin
You are given a method named spin_me that takes a string 
as an argument and returns a string that contains the same 
words, but with each word's characters reversed. Given the 
method's implementation, will the returned string be the 
same object as the one passed in as an argument or a 
different object?

# PROBLEM
- Input: Take string as argument
- Output: Return string with same words, but with chars reversed
# EXAMPLE
# DATA STRUCTURE
# ALGORITHM
# CODE
=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = 'hello world'
puts str.object_id 
puts spin_me(str).object_id

# Answer
=begin
Given the implementation, the returned string will be a
different object from the one passed in as an argument.
str.split returns a new string.
=end