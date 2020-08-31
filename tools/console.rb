require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
P1 = Passenger.new("Jessica")

D1 = Driver.new("Driver Tom")

R1 = Ride.new("Driver Pete", "Jon Snow", 30)

binding.pry
