require 'pry'
class Ride
    attr_reader :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        self.class.all << self 
    end
    def self.all
        @@all 
    end

    def self.average_distance
        distances = self.all.collect{|r| r.distance}
        average = distances.sum / distances.length
        average
    end

end
