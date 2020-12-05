class FuelReserves
  attr_reader :reserve

  def initialize
    @reserve = 100
  end

  def remove_fuel
    if check_reserve?
      "Sorry, there is no more fuel."
    else
      @reserve -= 1
      puts "Filled 1 gallon"
    end
  end

  def check_reserve?
    @reserve == 0
  end
end
