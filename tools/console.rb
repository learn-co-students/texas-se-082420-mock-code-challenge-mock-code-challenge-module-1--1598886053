require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# driver1 = Driver.new("Jack")
# driver2 = Driver.new("Raul")
# rider1 = Passenger.new("Pablo")

ride1 = Ride.new("Jack","Pablo","3.2")
ride2 = Ride.new("Raul","Pablo","5.5")

driver1 = Driver.new("Jack")
driver2 = Driver.new("Raul")
rider1 = Passenger.new("Pablo")
# Put your variables here~!

binding.pry
