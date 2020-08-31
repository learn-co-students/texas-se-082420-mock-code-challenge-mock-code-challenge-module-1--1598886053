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
        Ride.all.select do |ride|
        #binding.pry
            ride.passenger == self
        end
    end 

    def drivers
        drive = self.rides.collect do |ride|
            ride.driver
        end 
        drive.uniq
    end 

    def total_distance
        self.rides.sum do |ride|
            ride.distance
        end 
    end 

    def self.premium_members
        self.all.select do |people|
            people.total_distance > 100
        end 
    end 

end 
