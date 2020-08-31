require 'pry'
class Driver
    attr_reader :name

    def initialize(name)
        @name = name
    end
    def self.all
        drivers = Ride.all.collect{|r| r.driver} 
        drivers.uniq 
    end

    def rides
        Ride.all.select{|r| r.driver == self}
    end
    def passenger_names
        passengers = self.rides.collect{|r| r.passenger.name }
        passengers.uniq    
    end

    def total_distance
        distance = self.rides.collect{|r| r.distance}
        distance.sum 
    end
    def self.mileage_cap(distance)
        cap = distance.to_f
        rides = Ride.all.select{|r| r.driver.total_distance > cap}
        member = rides.collect{|r| r.driver.name}
        member.uniq
    end

end
