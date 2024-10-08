class Dog 
  attr_reader :name, :color # can also use attr_reader instead of def each one 
  def initialize(name_arg, color_arg)
    @name = name_arg
    @color = color_arg
  end

  def name
    @name 
  end

  def color
    @color
  end
end