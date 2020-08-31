require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



#Drivers
dan = Driver.new('dan')
eric = Driver.new('eric')

#Passengers
stan = Passenger.new('stan')
man = Passenger.new('stan')
phil = Passenger.new('phil')
thrill = Passenger.new('phil')

#Rides
r1 = Ride.new(dan, stan, 101)
r2 = Ride.new(dan,phil,2)
r3 = Ride.new(dan,man, 102)
r4 = Ride.new(dan,thrill,3)
r5 = Ride.new(eric,stan,5)
binding.pry
