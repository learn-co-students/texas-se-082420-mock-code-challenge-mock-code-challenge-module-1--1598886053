require 'pry'
class Ride

    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def self.average_distance
        sum = self.all.sum do |ride|
            #binding.pry
            ride.distance
        end 
        count = self.all.count
        sum/count
    end 



end 

