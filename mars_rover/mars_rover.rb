class Rover
  attr_accessor :dir, :x, :y


  def initialize(x, y, dir)
    #raise dir.inspect
    @x = x
    @y = y
    @dir = dir
  end

  def read_instructions(command)

      command.split("").each do |letter|
      # moves the rover
      if letter == "M"
        self.move
      # turns the rover left or right
      elsif letter == "R" || letter == "L"
        self.turn(letter)
      end
    end
    print "#{@x} #{@y} #{@dir}"
end

  def move
  # determines where on the grid the rover will move
    case @dir
    when "N" then @y += 1
    when "E" then @x += 1
    when "S" then @y -= 1
    when "W" then @x -= 1
    end
  end

  def turn(t)
    #determines which direction the rover will be facing
    if t == "R" && @dir == "N"
      @dir = "E"
    elsif t == "R" && @dir == "E"
      @dir = "S"
    elsif t == "R" && @dir == "S"
      @dir = "W"
    elsif t == "R" && @dir == "W"
      @dir = "N"
    elsif t == "L" && @dir == "N"
        @dir = "W"
    elsif t == "L" && @dir == "W"
        @dir = "S"
    elsif t == "L" && @dirir == "S"
        @dir = "E"
    elsif t == "L" && @dir == "E"
        @dir = "N"
      end
    end

    def position
     print "#{@x} #{@y} #{@dir}"
    end
end

#gets the size of the plateau
size = gets
#asks for input for Rover 1
doge = Rover.new(Integer(gets), Integer(gets), gets.chomp)
doge.read_instructions(gets)
#asks for input for Rover 2
walle = Rover.new(Integer(gets), Integer(gets), gets.chomp)
walle.read_instructions(gets)
