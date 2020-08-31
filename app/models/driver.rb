class Driver
    @@all = []
    attr_reader :name 

    def initialize (name)
        @name = name 
        self.class.all << self
    end 

    def self.all
        @@all
    end 
    
    def rides 
        Ride.all.select {|r| r.driver == self}
    end 

    def passenger_names
       rides.map {|r| r.passenger.name}.uniq
    end 

    def total_distance 
        rides.sum {|r| r.distance}.to_f
    end 

    def self.mileage_cap(distance)
        @@all.select {|driver| driver.total_distance > distance}
    end 


end 
