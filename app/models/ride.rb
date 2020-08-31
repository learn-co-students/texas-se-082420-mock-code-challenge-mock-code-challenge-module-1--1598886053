class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []
    def initialize(driver,passenger,distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        self.class.all << self
    end

    def self.all
        @@all
    end

    def average_distance
    end
end
