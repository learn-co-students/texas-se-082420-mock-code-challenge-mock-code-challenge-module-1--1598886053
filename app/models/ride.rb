class Ride

    attr_accessor :driver, :passenger, :distance

    def initialize (driver, passenger, distance=0)
        @driver = driver
        @passenger = passenger
        @distance = distance
    end

end
