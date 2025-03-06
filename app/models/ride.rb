
class Ride
    @@all = []
    attr_reader :driver, :passenger 
    attr_accessor :distance

    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger 
        @distance = distance 
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def self.average_distance
        total_distance = @@all.sum {|r| r.distance}
        total_distance / @@all.count
    end 


end 
