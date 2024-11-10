require 'pry'

cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

# unique_cities = []

# cities_lived_in.each do |person, cities|
#   cities.each do |city|
#     unique_cities << city
      
#   end

# end

# p unique_cities.uniq

# # Problem #2: 
# # Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# # names of the humans who've lived in Philadelphia.

# # [:michaela, :mike, :alex]
# # or
# # ["Michaela", "Mike", "Alex"]
# philly_residents = []
# cities_lived_in.each do |person,  cities|
#     if cities.any?("Philadelphia")
#       philly_residents << person.to_s.capitalize
#     end
#  #  binding.pry
# end
# p philly_residents



# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

populations = {}

cities_lived_in.each do |person, cities|
  cities.each do |city|
    if populations[city]
        populations[city] += 1
    else
        populations[city] = 1
    end
  end
end
 p populations
