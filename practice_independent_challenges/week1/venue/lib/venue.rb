class Venue
attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.each do |patron|
      patron.upcase!
    end
    @patrons
  end

  def over_capacity?
    if @patrons.count > @capacity
      true
    else
      false
    end
  end

  def kick_out
    until @patrons.count == @capacity
      @patrons.shift
    end
  end
end
