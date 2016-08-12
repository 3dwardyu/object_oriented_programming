class Rover
  attr_accessor :x, :y, :d

  def initialize(x, y, d)
    @x = x
    @y = y
    @d = d
  end

  def read_instructions(command)

  instruct = command.split(//)
    instruct.each do |letter|

      # if the array contains "M" it'll run move method and move one position
      if letter == "M"
        self.move(@d)
      # if the array contains "R" or "L" it'll run turn method with the correct direction
    elsif letter == "R" || letter == "L"
        self.turn(letter)
      #if it doesn't read letters other than "M, R or L" it will assume you are giving cordinates for the rover
      else
        @x = instruct[0]
        @y = instruct[1]
        @d = instruct[2]
      end

    end
    puts "#{@x} #{@y} #{@d}"
end

  def move
  # determines where on the grid the rover will move
    case @d
    when "N" then @y += 1
    when "E" then @x += 1
    when "S" then @y -= 1
    when "W" then @x -= 1
    end

  end

  def turn(t)
    #determines which direction the rover will be facing
    if t == "R" && @d == "N"
      @d = "E"
    elsif t == "R" && @d == "E"
      @d = "S"
    elsif t == "R" && @d == "S"
      @d = "W"
    elsif t == "R" && @d == "W"
      @d = "N"
    elsif t == "L" && @d == "N"
        @d = "W"
    elsif t == "L" && @d == "W"
        @d = "S"
    elsif t == "L" && @d == "S"
        @d = "E"
    elsif t == "L" && @d == "E"
        @d = "W"
      end
    end
end



size = gets
doge = Rover.new(gets, gets, gets)
doge.read_instructions(gets)
walle = Rover.new(gets, gets, gets)
walle.read_instructions(gets)
