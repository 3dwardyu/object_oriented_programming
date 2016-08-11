class Paperboy
  # name, exp, side have read and write access
  # earnings is read only
  attr_accessor :name
  attr_accessor :exp
  attr_accessor :side
  attr_reader :earnings

  # initialize paperboy with 4 variables
  def initialize(name, exp, side, earnings)
    @name = name
    @exp = exp
    @side = side
    @earnings = earnings
end
end
