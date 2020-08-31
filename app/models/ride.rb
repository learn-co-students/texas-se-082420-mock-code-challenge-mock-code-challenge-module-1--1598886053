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
        average_distance = 0
        @@all.each { |joiner| average_distance += joiner.distance }
        average_distance / @@all.length
    end 
end 


