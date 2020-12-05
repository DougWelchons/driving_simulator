class Prompts

  def self.input_mpg
    'Enter your Car\'s mpg> '
  end

  def self.input_fuel_capacity
    'Enter your Car\'s fuel capacity in gallons> '
  end

  def self.fuel_reserves_status(fuel_reserves)
    "Starting with #{fuel_reserves.reserve} Gallons in the reserves."
  end

  def self.fill_tank
    'Filling up tank...'
  end

  def self.fuel_status(car, fuel_reserves)
    "Done. Tank has #{car.fuel} Gallons. #{fuel_reserves.reserve} Gallons left in the reserves."
  end

  def self.options
    "Enter d to drive, f to fuel up, or s to get Car stats > "
  end

  def self.input_drive_milage
    "How far would you like to drive (miles)?\n>"
  end

  def self.gas_for_trip(car, distance)
    "It will take #{car.gas_needed(distance)} gallons to drive that far."
  end
end
