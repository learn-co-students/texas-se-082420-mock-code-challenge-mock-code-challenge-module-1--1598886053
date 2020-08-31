require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#start_variables
d1 = Driver.new("Antonio")
d2 = Driver.new("Raul")

p1 = Passenger.new("Joe")
p2 = Passenger.new("Stephen")

ride1 = Ride.new(d1,p2,54.2)
ride2 = Ride.new(d2,p1, 4.5)
ride3 = Ride.new(d1,p1,2.9)
ride4 = Ride.new(d2,p2,76.8)
#end_variables

binding.pry
