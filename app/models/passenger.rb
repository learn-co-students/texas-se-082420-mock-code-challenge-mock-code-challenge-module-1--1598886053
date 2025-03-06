class Passenger
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
        Ride.all.select {|ride| ride.passenger == self}
    end 

    def drivers
        rides.map {|r| r.driver}.uniq
    end 

    def total_distance 
        rides.sum {|r| r.distance}.to_f
    end 
    
    def self.premium_members
        @@all.select {|passenger| passenger.total_distance > 100.0}
    end 

end 

