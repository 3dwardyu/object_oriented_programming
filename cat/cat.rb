class Cat
  def initialize(name, preferred_food, meal_time)
    attr_accessor :name
    attr_accessor :preferred_food
    attr_accessor :meal_time
  end
end

rengar = Cat.new("Rengar", "dry foods", 15)
teemo = Cat.new("Teemo", "mushrooms", 23)
