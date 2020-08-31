class Ride

    attr_accessor :passenger, :driver, :distance

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
    end

    def self.average_distance
        Ride.all.collect do |distance|
            distance.rides
        end

    end

end
