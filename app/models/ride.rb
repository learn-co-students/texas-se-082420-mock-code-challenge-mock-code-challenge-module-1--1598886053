
class Ride
    attr_reader :driver, :passenger, :distance
    @@all = []
  
    def initialize(driver, passenger, distance)
      @driver = driver
      @passenger = passenger
      @distance = distance
      @@all << self
    end
  
    def self.average_distance
      distance_array = self.all.map do |ride|
        ride.distance
      end
  
      divisor = distance_array.count
  
      distance_array.inject {|sum, value| sum += value} / divisor
    end
  
    def self.all
      @@all
    end
  
    def self.over_mileage(mileage)
      self.all.select do |ride|
        ride.distance > mileage
      end
    end
  end
