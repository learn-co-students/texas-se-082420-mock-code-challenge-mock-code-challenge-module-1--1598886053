require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
p1 = Passenger.new("Doug")
p2 = Passenger.new("The proclaimers")

d1 = Driver.new("Cyrano do Bergerac")
d2 = Driver.new("Roxane")

r1 = Ride.new(d1, p1, 4.6)
r2 = Ride.new(d1, p1, 8.3)
r3 = Ride.new(d1, p2, 500.3)
r4 = Ride.new(d1, p2, 500.1)
r5 = Ride.new(d2, p1, 300.3)

binding.pry
