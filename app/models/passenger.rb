class Passenger

    attr_reader :name, :ride, :driver

    @@all = []

    def initialize(name)
        @name = name
        @ride = []
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        @ride << rides
    end

end
