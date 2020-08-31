require 'pry'
class Passenger
    attr_reader :name

    def initialize(name)
        @name = name
    end
    def self.all
        passengers = Ride.all.collect{|r| r.passenger} 
        passengers.uniq 
    end

    def rides
        Ride.all.select{|r| r.passenger == self}
    end
    def drivers
        drivers = self.rides.collect{|r| r.driver }
        drivers.uniq    
    end

    def total_distance
        distance = self.rides.collect{|r| r.distance}
        distance.sum 
    end

    def self.premium_members
        rides = Ride.all.select{|r| r.passenger.total_distance > 100.0}
        member = rides.collect{|r| r.passenger.name}
        member.uniq
    end
    
end
