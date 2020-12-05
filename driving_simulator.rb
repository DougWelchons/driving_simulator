require './lib/car'
require './lib/fuel_reserves'
require './lib/prompts'

print Prompts.input_mpg
mpg = gets.chomp.to_i
print Prompts.input_fuel_capacity
fuel_capacity = gets.chomp.to_i

car = Car.new(mpg, fuel_capacity)
fuel_reserves = FuelReserves.new

puts Prompts.fuel_reserves_status(fuel_reserves)
puts Prompts.fill_tank
puts car.add_fuel(fuel_reserves)
puts Prompts.fuel_status(car, fuel_reserves)

loop do
  print Prompts.options
  choice = gets.chomp.downcase
  if choice == 'd'
    print Prompts.input_drive_milage
    distance = gets.chomp.to_i
    puts Prompts.gas_for_trip(car, distance)
    puts car.drive(distance)
  elsif choice == 'f'
    print Prompts.fill_tank
    puts car.add_fuel(fuel_reserves)
  elsif choice == 's'
    puts car.stats
  else
    puts "Invalid Option"
  end
end
