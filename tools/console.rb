require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

class Passenger

  attr_accessor 
  attr_reader :name, :dates, :drivers


  def initialize(name)
      @name = name
      @rides = []
      @drivers = []
      @total_distance = 0
  end

  def rides
      @rides << dates
      @rides
  end

  def drivers
      @drivers << drivers
      @drivers
  end

  def total_distance
      
  end

end

binding.pry
