=begin
Modify the hash such that each member of the 
Munster family has an additional "age_group" 
key that has one of three values describing the 
age group the family member is in (kid, adult, or 
senior). Your solution should produce the hash below:

# PROBLEM
- Input: hash
- Output: same hash with "age_group" key-value pair added
- Requirements: 
  kid -> 0 - 17
  adult -> 18 - 64 
  senior -> 65+

# EXAMPLE
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
}

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
}

# DATA STRUCTURE
- Case statement for ages?
- Iterate through the hash to add a new key-value pair
- "age_group" => "category"

# ALGORITHM
- Iterate through each entry in the hash > #map!
- Initialize age = "age" of each entry
- Based on age, identify correct age label
- Add "age_group" => label key-value pair to nested hash
# CODE
=end