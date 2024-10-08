require "./lib/dog"
require "./lib/unicorn"
require "./lib/power"

clifford = Dog.new("Clifford", "red")
fido = Dog.new("Fido", "golden")

john = Unicorn.new("John", "orange")
billy = Unicorn.new("Billy", "Blue")

john.add_power("Invisibility")
billy.add_power("Flight")

flight = Power.new("Flight", 1)
invisibility = Power.new("Invisibility", 2)

require "pry"; binding.pry 