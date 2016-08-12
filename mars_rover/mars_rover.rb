class Rover
  attr_accessor :x, :y, :d

  def initialize(x, y, d)
    @x = x
    @y = y
    @d = d
  end

  def read_instructions(command)

return t
  end

def move
  # determines where on the grid the rover will move
  case d
  when @d = "N" then y + 1
  when @d = "E" then x + 1
  when @d = "S" then y - 1
  else x- 1
end

def turn
#determines which direction the rover will be facing
  case t
  when "R"
    case @d
    when "N" then @d = "E"
    when "E" then @d = "S"
    when "S" then @d = "W"
    else @d = "N"
  end

  else
  when "N" then @d = "W"
  when "W" then @d = "S"
  when "S" then @d = "E"
  else @d = "N"
  end
end

end

doge = Rover.new()
