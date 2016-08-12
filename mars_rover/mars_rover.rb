class Rover
  attr_accessor :d, :x, :y


  def initialize(x, y, d)
    @x = x
    @y = y
    @d = d
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
    print "#{@x} #{@y} #{@d}"
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
        @d = "N"
      end
    end

    def position
     print "#{@x} #{@y} #{@d}"
    end
end




doge = Rover.new(Integer(gets), Integer(gets), gets)
doge.read_instructions(gets)
# doge.position
# walle = Rover.new(gets, gets, gets)
# walle.read_instructions(gets)
# walle.position
