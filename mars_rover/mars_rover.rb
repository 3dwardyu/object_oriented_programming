class Rover
  attr_accessor :x, :y, :d

  def initialize(x, y, d)
    @x = x
    @y = y
    @d = d
  end

  def read_instructions(command)
  instruct = command.split
    for instruct.each do |letter|
      # if the array contains "M" it'll run move method and move one position
      if letter = "M"
      self.move(letter)
      # if the array contains "R" or "L" it'll run turn method with the correct direction
      elsif letter = "R" || "L"
      self.turn(letter)
      #if it doesn't read letters other than "M, R or L" it will assume you are giving cordinates for the rover
      else
      @x = instruct[0]
      @y = instruct[1]
      @d = instruct[2]
    end
  end


  def move(d)
  # determines where on the grid the rover will move
    case d
    when @d = "N" then y + 1
    when @d = "E" then x + 1
    when @d = "S" then y - 1
    else x - 1
    end
    return @x, @y
  end

  def turn(t)
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
      case @d
      when "N" then @d = "W"
      when "W" then @d = "S"
      when "S" then @d = "E"
      else @d = "N"
      end
    end
    return @d
  end
end

size = gets
doge = Rover.new(gets, gets, gets)
