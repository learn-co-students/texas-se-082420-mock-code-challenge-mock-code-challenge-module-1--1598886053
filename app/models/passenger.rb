
class Passenger 

    attr_accessor :total_distance
    attr_reader :name 


    @@all = []
    @@premium_members = []



    def initialize(name)
    @name = name 
    @rides = []
    @drivers = []
    @total_distance = 0
    self.class.all << self
    end 

    def rides(ride)
        @rides << ride
        
    end 

    def drivers(drive)
        @drivers << drive
    end 

     def total_distance(distance)
        self.total_distance = distance + self.total_distance
     end 


    def self.all 
        @@all
    end 

    def self.premium_members
        Passenger.all do |distance|
            if Passenger.total_distance > 100
         @@premium_members << Passenger.name
            end 
        end 
    end 







end 