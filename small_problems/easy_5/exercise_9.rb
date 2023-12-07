=begin
Write a method that takes a string argument and returns 
a new string that contains the value of the original string
with all consecutive duplicate characters collapsed into a single 
character. You may not use String#squeeze or String#squeeze!.

# PROBLEM
  - Input:
      String argument
  - Output:
      New string with value of the og string
      All consecutive duplicate chars collapsed into single character
  - Requirements:
    Implicit:
    1. Special characters like ' ', integers, * should be reduced to one
    Explicit:
  
# EXAMPLES
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# DATA STRUCTURE

"ddaa ly" -> "da ly"
d << a << ' ' << l ... (new string)
# ALGORITHM
1. Create a new empty string (REDUCE)
2. Iterate through string arg -> #eachchars
  3. Save last character of REDUCE
  4. if current char == last char, next
  5. Else append current char to REDUCE
6. Return string 
# CODE

=end

def crunch(string)
  reduced_string = ''
  string.each_char do |char|
    if char == reduced_string[-1]
      next
    else
      reduced_string << char
    end
  end
  reduced_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

