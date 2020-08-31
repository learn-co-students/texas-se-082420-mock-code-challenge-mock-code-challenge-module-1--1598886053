class Ride

    attr_reader :driver, :passenger, :distance

    @@all = []
    
    def initialize(driver, passenger, distance) 
        @driver = driver
        @passenger = passenger
        @distance = distance
        self.class.all << self
    end

    def passenger 
        @passenger
    end

    def driver 
        @driver
    end

    def distance 
        @distance
    end

    def self.all 
        @@all
    end

    def self.average_distance
        total = 0.0
        self.all.each {|ride| total += ride.distance}
        average = total / self.all.length
        average.round(2)
    end

end