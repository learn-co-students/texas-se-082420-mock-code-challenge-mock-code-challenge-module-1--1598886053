require 'pry'
class Passenger 
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 

        self.class.all << self
    end 

    def self.all 
        @@all
    end 

    def rides 
        Ride.all.select { |joiner| joiner.passenger == self}
    end 

    def drivers
        self.rides.collect { |joiner| joiner.driver}
    end 

    def total_distance
        total_distance = 0
        self.rides.each { |joiner| total_distance += joiner.distance}
        total_distance
    end

    def self.premium_members
        @@all.select { |passenger| passenger.total_distance > 100}
    end 

end 