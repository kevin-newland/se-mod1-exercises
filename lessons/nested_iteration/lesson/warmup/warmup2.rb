require 'pry'
# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
flattened_animals = []

nested_animals.each do |animals|
  animals.each do |animal|
    flattened_animals << animal.to_s
  end
end

p flattened_animals


# 2. Return an unnested array of animals with length >= 4
long_flat_animals = []
nested_animals.each do |animals|
  animals.each do |animal|
    if animal.length >= 4
      long_flat_animals << animal
    end
  end
end
p long_flat_animals
# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
animal_info = {}

nested_animals.each do |animals|
  animals.each do |animal|
    animal_info[animal] = animal.length
  end
end

p animal_info


#get to the data then go from there