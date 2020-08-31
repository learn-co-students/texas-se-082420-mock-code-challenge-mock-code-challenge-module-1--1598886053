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
        Ride.all.select { |joiner| joiner.driver == self}
    end 

    def total_distance
        total_distance = 0
        self.rides.each { |joiner| total_distance += joiner.distance}
        total_distance
    end

    def passenger_names
        self.rides.collect{ |joiner| joiner.passenger.name}.uniq
    end 

    def self.mileage_cap(distance)
        @@all.select { |driver| driver.total_distance > distance}
    end 
end 
