class Cat
  attr_accessor :name
  attr_accessor :preferred_food
  attr_accessor :meal_time
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time =  meal_time
  end
  def eats_at
    puts Time.at(@meal_time).strftime("%l %p")

  end
end

rengar = Cat.new("Rengar", "dry foods", 15)
teemo = Cat.new("Teemo", "mushrooms", 23)

rengar.eats_at
