class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def rides
       arr = Ride.all.select {|rides| rides.passenger == self}
       return arr
    end

    def drivers
        Ride.all.collect {|r| r.driver}
    end

    def total_distance
        arr = Ride.all.select {|r| r.passenger == self}
        arr2 = arr.collect {|r| r.distance}
        arr2.sum
    end

    def self.premium_member
        arr = Passenger.all.select {|p|p.total_distance > 100.0}
        arr
    end
         

end

