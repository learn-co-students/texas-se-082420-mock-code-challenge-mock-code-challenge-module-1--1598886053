class Passenger

    attr_reader :name

    @@all = []

        def initialize(name)
            @name = name
            self.class.all << self
        end

        def name
            @name
        end

        def rides
            Ride.all.select {|ride| ride.passenger == self}
        end

        def drivers
            self.rides.collect {|ride| ride.driver}
        end

        def total_distance
            total = 0.0
            self.rides.each {|ride| total += ride.distance}
            total.round(2)
        end

        def self.all
            @@all
        end

        def self.premium_members
            self.all.select {|passenger| passenger.total_distance > 100.0}
        end
end
