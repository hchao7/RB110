=begin
As we have seen previously we can use some 
built-in string methods to change the case of
a string. A notably missing method is something 
provided in Rails, but not in Ruby itself...titleize. 
This method in Ruby on Rails creates a string that 
has each word capitalized as it would be in a title. 
For example, the string:
=end
def titleize(string)
  array_words = string.split
  capitalized_array = array_words.map do |element|
    element.capitalize
  end 
  capitalized_array.join(' ')
end

words = "the flintstones rock"
puts titleize(words) == "The Flintstones Rock"