class Driver

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        Driver.all.select do |drivers| 
            driver.rides == self.passenger
            self.Passenger.uniq
        end
        #Driver.select {|p| p.Passenger}.uniq
    end

    #  def rides
    #      Driver.all.collect do |rides|
    #          Driver.
    #  end

    #  end

end
