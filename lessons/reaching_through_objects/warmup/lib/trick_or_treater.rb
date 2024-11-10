class  TrickOrTreater 
  attr_reader :dressed_up_as, :bag

  def initialize(dressed_up_as)
    @dressed_up_as = dressed_up_as.style
    @bag = Bag.new
  end

  def has_candy?
    if @bag.empty?
     false
    else 
     true
    end 

  end

  def 
    
  end


end