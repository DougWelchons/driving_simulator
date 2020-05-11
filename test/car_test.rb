require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'

class CarTest < Minitest::Test
  def test_it_has_attributes
    car = Car.new(30, 12)
    assert_equal 30, car.mpg
    assert_equal 12, car.fuel_capacity
    assert_equal 0.0, car.odometer
    assert_equal 0.0, car.fuel
  end

  def test_it_can_change_attributes
    car = Car.new(30, 12)
    car.odometer += 0.75
    car.odometer += 0.75
    assert_equal 1.5, car.odometer

    car.fuel += 0.9
    car.fuel += 0.9
    assert_equal 1.8, car.fuel
  end
end
