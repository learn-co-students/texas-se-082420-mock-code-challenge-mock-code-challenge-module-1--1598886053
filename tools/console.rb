require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



walid = Passenger.new("walid")
george = Passenger.new("george")

bob = Driver.new("bob")
jimmy = Driver.new("billy")

ride = Ride.new(bob,walid,10)

binding.pry
0
