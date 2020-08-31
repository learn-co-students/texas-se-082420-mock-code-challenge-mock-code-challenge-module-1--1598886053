require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
alex = Passenger.new("Alex Mata")
karo = Passenger.new("Karo Cantu")

zack = Driver.new("Zack T.")
brian = Driver.new("Brian G.")

ride1 = Ride.new(brian, alex, 6)
ride2 = Ride.new(brian, karo, 3.2)
ride3 = Ride.new(zack, alex, 13.1)
ride4 = Ride.new(brian, karo, 150)


binding.pry
puts "Thanks for riding with us!"