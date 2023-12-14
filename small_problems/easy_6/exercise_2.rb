=begin
Write a method that takes an array of strings, 
and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.

# PROBLEM
- Inputs: array of strings
- Outputs: (new) array of same string values, without vowels
- Requirements:

# EXAMPLES
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == 
              %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == 
              %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == 
               ['BC', '', 'XYZ']

# DATA STRUCTURE
["green", "YELLOW", "black", "white"]
['BC', '', 'XYZ']

# ALGORITHM
* Initialize empty 2nd array
1. Iterate through each word in the 1st array (#each)
2. For each word, replace "aeiou" > "" (#gsub!)
3. Add word to the 2nd array (#<<)

# CODE
=end

def remove_vowels(array)
  no_vowels = []
  array.each do |element|
   element.gsub!(/[aeiouAEIOU]/, "")
   no_vowels << element
  end
  no_vowels
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']