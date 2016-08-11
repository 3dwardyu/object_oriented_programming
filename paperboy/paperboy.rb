class Paperboy
  # name, exp, side have read and write access
  # earnings is read only
  attr_accessor :name, :exp, :side
  attr_reader :earnings

  # initialize paperboy with 4 variables
  def initialize(name, exp, side, earnings)
    @name = name
    @exp = exp
    @side = side
    @earnings = earnings
    @quota = exp
  end

  def quota
    @quota = 50 + @exp/2
    return @quota
  end

  def deliver(street_start, street_end)
    houses = []
    earn = 0
    ex = 0
    # finds out how many houses are being delived to
  if @side == "even"
    houses = (street_start..street_end).find_all { |n| n % 2 == 0 }
    exp = houses.length
    if @exp <= @quota
      earn = ex * 0.25
    else
      earn = (@quota + 0.25) + ((ex - @quota) * 0.50)
    end

  elsif side == "odd"
    houses = (street_start..street_end).find_all { |n| n % 2 != 0 }
    ex = houses.length
    if @exp <= @quota
      earn = ex * 0.25
    else
      earn += (@quota + 0.25) + ((ex - @quota) * 0.50)
    end

  else
    earn -= 2
  end
 @earnings += earn
 @exp += ex
end


  def report
    puts "I'm #{@name}, I've delivered #{@exp} papers and I've earned #{@earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy", 0, "even", 0)

tommy.quota
tommy.deliver(101, 220)
tommy.earnings
tommy.report
