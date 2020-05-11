## Driving Simulator

This is an activity to practice refactoring and emphasize the principles of Abstraction and Encapsulation.

## Setup

* Clone down the repository.
* If you haven't already, install Minitest: `gem install minitest`
* From the root of the project:
      * Run the code with `ruby driving_simulator.rb`
      * Run the test with `ruby test/car_test.rb`

### Additions

Consider what it would take to add the following functionality:

* Check if there is fuel in the reserves before adding to the car's fuel (fuel reserves should not be allowed to fall below 0)
* Allow the user to enter how fast it takes to fill a gallon of the car's fuel tank (currently, hard coded to 1 second)
* Currently, the loop that fills the car's tank will result in an infinite loop if the car's tank is not a whole number. You can see this by entering the following inputs:
    * 30 mpg
    * 10 fuel capacity
    * d to drive
    * 1 to drive one mile
    * f to fill fuel tank
* When driving, the car will always drive at the same rate no matter how long the distance. This isn't realistic. Allow the user to enter an acceleration for the car that allows for the rate of driving to increase as a car drives.

### Questions

* Is the Car class helpful?
* Is testing adequate or helpful? How could you improve testing?
* How would adding to the Car class improve this code?
* Are there other classes you could add to improve this code?

### Refactoring

Spend some time refactoring the code base to make it more readable, extensible, and testable.
