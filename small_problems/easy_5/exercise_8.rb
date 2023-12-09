=begin
Write a method that takes an Array of Integers 
between 0 and 19, and returns an Array of those 
Integers sorted based on the English words for each 
number:

zero, one, two, three, four, five, six, seven, 
eight, nine, ten, eleven, twelve, thirteen, fourteen, 
fifteen, sixteen, seventeen, eighteen, nineteen

# PROBLEM
- Input: An array of integers
- Output: An array of integers sorted, 
          based on how the Eng words are sorted
- Requirements:
    Explicit:
      numbers 0 -> 19
    Implicit:
# EXAMPLES
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

(0..2).to_a == [1, 2, 0]

# DATA STRUCTURES
- start with an array
- [zero one two]
- [0, 1, 2...]

- [zero => 0, one => 1, two => 2]
- [one two zero]
- [1,  2,  0]

# ALGORITHM
- letter names must be alphabetized -> One, Two, Zero
- numbers alphabetized based on how the array is alphabetized
- create a hash with numbers names and the number

1. SET array_words = array of number names using %w( )
2. SET hash with numbers names and the number #each_with_index
   3. hash[element] = index
4. SORT array_words_sorted #sort
5. SET array_num_sorted = []
6. ITERATE array_words_sorted #each
   7. array_sorted << hash[element]
# CODE
=end

def alphabetic_number_sort(array_num)
  array_words = %w(zero one two three four five six seven
  eight nine ten eleven twelve thirteen fourteen 
  fifteen sixteen seventeen eighteen nineteen)
  word_and_numbers = { }

  array_words.each_with_index do |element, index|
    word_and_numbers[element] = index
  end

  array_words_sorted = array_words.sort
  array_num_sorted = []

  array_words_sorted.each_with_index do |element, index|
    array_num_sorted << word_and_numbers[element]
  end
  array_num_sorted

end
puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]



