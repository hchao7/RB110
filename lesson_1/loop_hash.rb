# create empty hash 'new'
# loop through hash using each method
# if value == 'Fruit'
  # add key, value to 'new' hash
# return 'new' hash

# My Solution
=begin
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce)
  new = {}

  produce.each do |key, value|
    new[key] = value if value == 'Fruit'
  end

  new
end

puts select_fruit(produce)
=end 

# LS Solution
def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

