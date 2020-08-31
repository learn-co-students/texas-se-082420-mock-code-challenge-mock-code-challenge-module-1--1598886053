class Ride 
    @@all = [] 

    def initialize(driver, passenger, distance)
        @driver = driver 
        @passenger = passenger 
        @distance = distance 
        @@all << self 
    end 

    def passenger 
        @passenger 
    end 

    def driver 
        @driver
    end 

    def distance
        @distance 
    end 

    def average_distance 
        
    end 

    def self.all
        @@all 
    end 
end 
