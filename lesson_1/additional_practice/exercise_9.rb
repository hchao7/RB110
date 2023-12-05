=begin
This method in Ruby on Rails creates a string that has each word 
capitalized as it would be in a title. For example, the string:
words = "the flintstones rock"
>> 
words = "The Flintstones Rock"

P: Problem
- Input: String
- Output: String where each word has its first letter capitalized

E: Examples
words = "the flintstones rock" >> words = "The Flintstones Rock"
words = "" >> words = ""

A: 
Split string into array of separate words, based on ' '

- map method
Iterate through each word in the string
  Changes: Capitalize the first letter of each word 

Create new array with changes ^
Join array, with spaces included
=end

def titleize(string)
  array_words = string.split
  capitalized_array = array_words.map do |element|
    element.capitalize
  end 
  capitalized_array
end

words = "the flintstones rock"
puts titleize(words) == ["The", "Flintstones", "Rock"]
