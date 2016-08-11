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

  end

# sets a quota variable to compare
  def quota
    @quota = 50 + @exp/2
    return @quota
  end

  def deliver(ss, se)
    xp = 0
    earn = 0
    ot = 0

    if side == "even"
    deliver = (ss..se).find_all { |n| n % 2 == 0}
    xp = deliver.length
      if xp == @quota
      earn = xp * 0.25
      elsif xp > @quota
      earn = @quota * 0.25
      ot = (xp - @quota) * 0.50
      else
      earn = (xp * 0.25) - 2
      end

    else
    deliver = (ss..se).find_all { |n| n % 2 == 0}
    xp = deliver.length
      if xp == @quota
      earn = xp * 0.25
      elsif xp > @quota
      earn = @quota * 0.25
      ot = (xp - @quota) * 0.50
      else
      earn = (xp * 0.25) - 2
      end
    end
     @earnings += earn + ot
     @exp += xp
  end


  def report
    puts "I'm #{@name}, I've delivered #{@exp} papers and I've earned #{@earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy", 0, "even", 0)

tommy.quota
tommy.deliver(1, 20)
tommy.earnings
tommy.report
