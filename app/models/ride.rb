
class Ride 
attr_accessor :miles, :passengers, :drivers
@@miles_count=0
def initialize(miles)
    @miles = miles
    @@miles_count+=1
    @rides = rides
end

def self.count 
    @@miles_count
end


end