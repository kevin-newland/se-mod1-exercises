# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

string_animals = animals.map do |animal|

  animal.to_s 
end

p string_animals



# 2. Return an array of animals with a length >= 4.

animal_length = animals.select do |animal|

  animal.length >= 4 
   

end

p animal_length