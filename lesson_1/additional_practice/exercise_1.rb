=begin
Turn this array into a hash where the names are 
the keys and the values are the positions in the 
array

PROBLEM:
- Input: array with strings
- Output: hash (hash[names] = [positions in array])
- Requirements:

EXAMPLES:
- flintstones = ["Fred", "Barney", "Wilma"]
- hash = {"Fred" => 0, "Barney" => 1...}

DATA STRUCTURE:
- hash["Fred"] = 0

ALGORITHM:
- Need elements in the array
- Need their positions in the array
- Hash to store this information ^ 
- each_with_index
  - element, position
  - declare hash outside
=end

# CODE

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}

flintstones.each_with_index do |element, index|
  hash[element] = index
end
puts hash