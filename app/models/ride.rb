
class Ride


    attr_accessor :driver, :passenger, :distance
    # @@all = []
    def initialize (driver,passenger,distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    self.class.all << self
    end 
    

    # def self.all
    #     @@all
    # end 

    
     def self.avrage_distance
        Ride.all do |distance|
            Ride.distance == self
        
        end 

    end 


 



end 