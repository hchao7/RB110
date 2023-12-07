=begin
Write a method that takes a string with one or more 
space separated words and returns a hash that shows 
the number of words of different sizes.

# PROBLEM
- Input:
  - String with one or more space separated words
- Output
  - Hash with number of words of diff sizes
- Requirements
  - Explicit:
    Word = any string of characters without space > "@%#^"
  - Implicit:
    All words in a string separate by just ONE space

# EXAMPLES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# DATA STRUCTURE
Hash = {[word-length] => [number of words]}

# ALGORITHM
  1. Split string up into array of words -> #split method
     Create HASH
  2. Iterate through each element -> # each method
        If element length is NOT in the HASH keys -> #hash.keys, #include?
           new key-value pair
        Else
           add one to current key-value pair
  
# CODE
=end

def word_sizes(string)
  words_array = string.split(' ')
  wordlengths_hash = {}
  words_array.each do |element|
    length = element.size
    if wordlengths_hash.keys.include?(length)
      wordlengths_hash[length] += 1
    else
      wordlengths_hash[length] = 1
    end 
  end
  wordlengths_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
