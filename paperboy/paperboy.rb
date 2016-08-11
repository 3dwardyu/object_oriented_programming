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

  def quota
    q = 50 + @exp/2
  end

  def deliver(street_start, street_end)

  end

  def report
  end

end
