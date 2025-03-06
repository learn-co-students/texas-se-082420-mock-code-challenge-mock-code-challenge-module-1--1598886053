class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def passenger_names
        Ride.all.collect{|r| r.passenger}
    end

    def rides
        arr = Ride.all.select {|r| r.driver == self}
    end

    def self.all
        @@all
    end

    def mileage_cap(miles= 0.0)
        arr = Ride.all.select {|r| r.driver == self}
        (arr.select {|r| r.distance > miles}).select {|r| r.driver}
    end

end
