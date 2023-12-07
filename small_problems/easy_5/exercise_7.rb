=begin
Modify the word_sizes method from the previous 
exercise to exclude non-letters when determining word size. 
For instance, the length of "it's" is 3, not 4.

# PROBLEM
- Input:
- Output:
- Requirements:
  - Just use gsub! to remove any special characters from the 
    string element before calculations
# EXAMPLES
# DATA STRUCTURES
# ALGORITHM
# CODE
=end

def word_sizes(string)
  words_array = string.split(' ')
  wordlengths_hash = {}
  words_array.each do |element|
    element.gsub!(/[^a-zA-Z]/, '')
    length = element.size
    if wordlengths_hash.keys.include?(length)
      wordlengths_hash[length] += 1
    else
      wordlengths_hash[length] = 1
    end 
  end
  wordlengths_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}