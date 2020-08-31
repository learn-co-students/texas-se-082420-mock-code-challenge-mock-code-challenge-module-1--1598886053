require "pry"

class Passenger

    attr_reader :name
    attr_accessor :drivers

    @@all = []
    def initialize(name)
        @name = name
        
        self.class.all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
        #get all rides
        #select rides that are == self
    end

    def drivers
        Ride.all.select do |driver|
            driver.passenger == self
        end
    end

    def total_distance
        Ride.all.select do 
    end

    def self.all
        @@all
    end

    def premium_members
    end
end
