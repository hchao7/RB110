=begin
Write a method that takes an Array as an argument, and 
reverses its elements in place; that is, mutate the Array 
passed into this method. The return value should be the same 
Array object.

#PROBLEM
- Input: Array as an argument
- Output: Mutated array with elements reversed
- Requirements:
  1. return value should be the same Array object
  2. Can't use reverse or reverse!

#EXAMPLES
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

#DATA STRUCTURE
        -4 -3 -2 -1
list =   [1, 2, 3, 4]
                     -2  -3 -4
         [1, 2, 3, 4, 3, 2, 1]
result = [4, 3, 2, 1]

#ALGORITHM
  starting_size = list.size
  Loop until index >= -(starting_size)
  1. Iterate starting from index = -2
  2. list << list[index]
  3. index -= 1

  4. string slice backwards
  5. str.slice!(0, starting_size)

#CODE
=end 

def reverse!(list)
 start_size = list.size
 index = start_size - 2

 while index >= 0
  list << list[index]
  index -= 1
 end
 list.slice!(0, start_size - 1)
 list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true