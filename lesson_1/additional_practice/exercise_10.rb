=begin
# PROBLEM
- Input: munsters hash
- Output: munsters hash with an additional "age_group" key

- Requirements:
  - Implicit:
  - Explicit:
    Kid: 0 - 17
    Adult: 18 - 64
    Senior: 65+

# EXAMPLES
{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# DATA STRUCTURES
            Key                 Value
munsters = {name => {age-number, key-value ... agegroup-label}}

# ALGORITHM
1. Iterate through each Key-Value pair in musters hash
  2. Access Value hash in Key-Value pair
  3. Access age-number in Value hash
  4. Based on number, return label for age-group 
  5. Add agegroup-label to Value hash

4. Based on number, return label for age-group >> case statement
    Kid: 0 - 17
    Adult: 18 - 64
    Senior: 65+

=end

# 4. Code

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def age_group_label(num)
  case num
  when 0..17
    "kid"
  when 18..64
    "adult"
  else
    "senior"
  end
end

#1. Iterate through each Key-Value pair in musters hash
  #2. Access Value hash in Key-Value pair
  #3. Access age-number in Value hash
  #4. Based on number, return label for age-group 
  #5. Add agegroup-label to Value hash

munsters.each do |key, value|
  label = age_group_label(value["age"])
  value["age_group"] = label
end

puts munsters