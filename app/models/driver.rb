class Driver

    attr_reader :name


    @@all = []
    def initialize(name)
        @name = name

        self.class.all << self
    end

    def passenger_names
        Ride.all.select do |p|
            p.driver == self
        end
    end

    def rides
    end

    def self.all
        @@all
    end

    def mileage_cap
    end
end
