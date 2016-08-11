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
    total_delv = (street_end.to_f - street_start)/2
    total_earned = 0
    if total_delv <= 50
      total_earned = total_delv * 0.25
      return total_earned
    else
      total_earned = (50 * 0.25) + ((total_delv - 50) * 0.50)
      return total_earned
  end
end

  def report
    
  end

end
