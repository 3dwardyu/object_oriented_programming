class Cat
  attr_accessor :name
  attr_accessor :preferred_food
  attr_accessor :meal_time

  # initialize cat with three attributes
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time =  meal_time
  end

  # displays time cat eats at
  def eats_at

    if @meal_time == 12
      return "#{@meal_time} PM"

  elsif @meal_time <= 11
    return "#{@meal_time} AM"

  else
    return "#{@meal_time - 12} PM"
  end

  # Time.at(@meal_time).strftime("%l %p")

  end

# introduces the cat
  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end

rengar = Cat.new("Rengar", "dry foods", 15)
teemo = Cat.new("Teemo", "mushrooms", 13)

teemo.eats_at
rengar.eats_at

teemo.meow
