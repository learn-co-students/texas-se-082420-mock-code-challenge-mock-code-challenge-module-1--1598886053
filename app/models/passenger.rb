class Person
    attr_accessor :rides, :name 
    @@all = []
    def initialize(name)
        @name = name
        @rides =[]
        @@all << self
    end

    def add_rides(ride)
        @rides << rides
    end
    def self.all
        @@all
    end
end
