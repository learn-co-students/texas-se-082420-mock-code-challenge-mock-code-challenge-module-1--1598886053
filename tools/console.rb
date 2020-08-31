require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
billy = Passenger.new("billy")
tom = Passenger.new("tom")
cara = Driver.new("cara")
sara = Driver.new("sara")
uber = Ride.new(sara, billy, 3.5)
uber2 = Ride.new(sara, billy, 55.4)
lyft = Ride.new(sara, billy, 20.6)
lyft2 = Ride.new(cara, tom, 104.3)


binding.pry
0