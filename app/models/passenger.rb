class Passenger
    attr_reader :name 
    attr_accessor :ride, :total 
    @@all = []

    def initialize(name)
        @name 
    end 

    def name
        @name 
    end 

    def rides 
      Ride.all.select {|ride| ride.passenger == self}
    end 

    def drivers 
      Driver.all.select {|ride| ride.passenger == self}
    end 

    def total_distance
       self.total 
    end 

    def self.all 
        @@all 
    end 


end 
