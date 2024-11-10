class Bag 
 attr_reader :count, :candies

  def initialize
    @count = 0
    @candies = []
  end

  def empty?
   if @candies == []
    true
   else
    false  
   end
  end

  def add_candy(candy)
    @candies << candy
    @count += 1
  end

  def contains?(new_candy)
    @candies.any? do |candy|
      candy.type == new_candy
    end
  end
end