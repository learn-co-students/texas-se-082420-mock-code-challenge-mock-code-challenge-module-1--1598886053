require.pry
class Diver 
    attr_accessor :name, :rides 
    @@all=[]
    def initilize(name)
        @name = name
        @rides = []
        @@all << self
    end
    def add_rides(ride)
        @rides << rides
    end
    
    def self.all
        @@all
    end

end 
