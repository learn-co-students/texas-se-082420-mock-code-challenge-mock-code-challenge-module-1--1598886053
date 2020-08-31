class Passenger

    attr_writer :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.each.select do |rides|
            passenger.ride == passenger_ride
        end
    end

    def driver
    end


    def total_distance
    end

    def self.all
        @@all
    end

    def self.premium_members
    end













end
