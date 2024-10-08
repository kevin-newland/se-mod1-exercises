class Power 
  attr_reader :name, :energy_level

  def initialize(name, energy_level)
    @name = name
    @energy_level = energy_level
  end
end