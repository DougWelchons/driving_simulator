require './lib/car'

print 'Enter your Car\'s mpg> '
mpg = gets.chomp.to_i
print 'Enter your Car\'s fuel capacity in gallons> '
fuel_capacity = gets.chomp.to_i
car = Car.new(mpg, fuel_capacity)

fuel_reserves = 100
puts "Starting with #{fuel_reserves} Gallons in the reserves."
puts 'Filling up tank...'

until car.fuel == car.fuel_capacity
  sleep(1)
  car.fuel += 1
  fuel_reserves -= 1
  puts "Filled 1 gallon..."
end

puts "Done. Tank full. #{fuel_reserves} Gallons left in the reserves."

loop do
  print "Enter d to drive, f to fuel up, or s to get Car stats > "
  choice = gets.chomp.downcase
  if choice == 'd'

    puts "How far would you like to drive (miles)?"
    print "> "
    distance = gets.chomp.to_i

    gas_needed = distance.to_f / car.mpg.to_f
    puts "It will take #{gas_needed} gallons to drive that far."
    if gas_needed > car.fuel
      puts "Not enough gas to drive that far."
    else
      miles_left = distance
      until miles_left == 0
        sleep(1)
        car.odometer += 1
        miles_left -= 1
        puts "Driving 1 mile..."
      end
      puts "Done. Drove #{distance} miles."
      car.fuel -= gas_needed
    end
  elsif choice == 'f'
    print 'Filling up tank...'
    until car.fuel == car.fuel_capacity
      sleep(1)
      car.fuel += 1
      fuel_reserves -= 1
    end
    puts "Done. Tank full. #{fuel_reserves} Gallons left in the reserves."
  elsif choice == 's'
    puts "Odometer: #{car.odometer.round(2)}."
    puts "Fuel: #{car.fuel.round(2)} gallons."
    puts "MPG: #{car.mpg}."
    puts "Fuel Capacity: #{car.fuel_capacity}."
  else
    puts "Invalid Option"
  end
end
