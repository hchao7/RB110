=begin
Given a string of words separated by spaces, 
write a method that takes this string of words 
and returns a string in which the first and last 
letters of every word are swapped.

You may assume that every word contains at least 
one letter, and that the string will always contain 
at least one word. You may also assume that each string 
contains nothing but words and spaces.

# PROBLEM
- Inputs: string of word separated by spaces
- Output: return a string where the first & last letters are swapped
- Requirements/Assumptions: 
  Implicit:
  Explicit:
    1. Every word = at least one letter
    2. Every string = at least one word
    3. String = words, spaces, NO special characters

# EXAMPLES
- swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
- swap('Abcde') == 'ebcdA'
- swap('a') == 'a'

# DATA STRUCTURE
  # Convert string > array with words
# ALGORITHM
  1. Iterate through each element in the string
     - #split based on ' '
  2. Swap the first and last letters - transformation
     - #map!
  3. Save the change to each element in the string
  4. Return the string

  2. Swap the first and last letters - transformation
  -  'ebcdA'
  -  LAST = last character of string
  -  string[last_index] = string[0] 
  -  string[0] = LAST

# CODE
=end

def swap(string)
  words_array = string.split(' ')
  words_array.map! do |element|
    last_index = element.size() - 1
    last_element = element[last_index]
    element[last_index] = element[0] 
    element[0] = last_element
    element
  end
  words_array
  words_array.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'