class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select {|dish| dish.category == category}
  end

  def menu
    @dishes.group_by { |dish| dish.category} #sort_by only returns an array
  end

  def ratio(category)
   category_count = @dishes.count {|dish| dish.category == category}
   total_count = @dishes.size
   (category_count.to_f/ total_count.to_f * 100)
  end
end