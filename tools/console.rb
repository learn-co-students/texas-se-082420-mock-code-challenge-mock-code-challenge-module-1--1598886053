require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

p1 = Passenger.new("Tim")
p2 = Passenger.new("Dutch")
p3 = Passenger.new("Tim")
d1 = Driver.new("Larry")
d2 = Driver.new("Potter")
r1 = Ride.new("Larry", "Tim", 4.3)
r2 = Ride.new("Potter", "Dutch", 25.6)


binding.pry
0