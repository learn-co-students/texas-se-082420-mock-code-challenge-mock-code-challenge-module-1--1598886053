class Driver

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
        Ride.all.select do |ride|
            ride.driver == self
        end
    end 

    def passenger_names
        t = self.rides.collect do |rides|
            rides.passenger
        end 
        t.uniq
    end 

    def total_distance
        self.rides.sum do |ride|
            ride.distance
        end 
    end 

    def self.mileage_cap(cap)
        self.all.select do |people|
            people.total_distance > cap
        end 
    end 


end 
