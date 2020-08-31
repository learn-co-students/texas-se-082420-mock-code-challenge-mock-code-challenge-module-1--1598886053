class Driver

   attr_reader :name

   @@all = []
   
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def name
        @name
    end

    def passenger_names
       arr = self.rides.collect {|ride| ride.passenger}
       arr.uniq
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def self.all
        @@all
    end

    def total_distance
        total = 0.0
        self.rides.each {|ride| total += ride.distance}
        total
    end

    def self.mileage_cap(distance)
        self.all.select {|driver| driver.total_distance > distance}
    end
end