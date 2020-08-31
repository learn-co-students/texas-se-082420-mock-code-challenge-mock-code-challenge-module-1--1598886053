
#join


class Ride

    attr_accessor :passenger, :distance, :driver
    attr_reader :average_distance, :driver

    @@all = []

    def initialize(passenger, driver, distance=0.0)
        @passenger = passenger
        @driver = driver
        @distance = distance
        self.class.all << self
    end

    def self.all
        @@all
    end

    # def driver
    #     @driver
    # end

    def self.average_distance
        dist_arr = @@all.collect {|r| r.distance}
        dist_arr.inject{ |sum, d| sum + d }.to_f / dist_arr.size
    end
end
