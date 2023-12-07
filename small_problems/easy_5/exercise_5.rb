=begin
Given a string that consists of some words (all lowercased) 
and an assortment of non-alphabetic characters, write a 
method that returns that string with all of the non-alphabetic 
characters replaced by spaces. If one or more non-alphabetic 
characters occur in a row, you should only have one space in 
the result (the result should never have consecutive spaces).

# PROBLEM
- Input: string with lowercase words and non-alphabetic chars
- Output: string with non-alphabetic chars replaced by spaces
- Requirements:
  - Implicit:
    1. String with only non-alpha characters = ' ' (1 space)
    2. Spaces ' ' are also non-alpha characters
  - Explicit:
    1. If one or more non-alphabetic chars appear in a row >
       have one space in result

# EXAMPLE
cleanup("---what's my +*& line?") == ' what s my line '
          1     1 1   1       1
cleanup("---w") == ' w'
cleanup("---") == ' '
cleanup("---w &") == ' w '

# DATA STRUCTURE
# ALGORITHM
- cleanup("---w") == ' w'
  - If character = non-alpha, replace with *
  - gsub? ^ "absd --".gsub(/[^a-z]/, ' ')
  - split string based on characters
  - declare STR outside
  - iterate through characters array using each
  - if (new_string.size > 0) && (char is ' ' && STR[-1] = ' '), next
  - else, append to STR

# PROBLEM
=end

def cleanup(special_string)
 special_string.gsub!(/[^a-z]/, ' ')
 array_char = special_string.chars
 new_string = ''
 
 array_char.each do |element|
  if (new_string.size > 0) && (element == ' ' && new_string[-1] == ' ')
   next
  else
    new_string << element
  end
 end
 new_string
end

puts cleanup("---what's my +*& line?") == ' what s my line '
puts cleanup("-w") == ' w'
puts cleanup("---") == ' '
puts cleanup("---w &") == ' w '