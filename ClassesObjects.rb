# Story:	As a programmer, I can make a vehicle. Hint:	Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.
class Vehicle
    
    def initialize
        puts "This object was initialized!"
    end
  
    def my_vehicle(vehicle)
        @vehicle = vehicle
    end
  
end

p my_vehicle = Vehicle.new
# Story:	As a programmer, I can make a car. Hint:	Create a class called Car, and create a variable called my_car which contains an object of class Car.

class Car
    
    def initialize year
        @year = year
        @current_speed = 0
        @lights = 'off'
        @wheels = 4
        @signal = 'off'
    end
    
    def year
        @year
    end

    def wheels
        puts "#{@wheels} wheels"
    end
    
    def details
        puts "A new car has been made: #{@year} #{@model} and the lights are #{@lights}."
    end
    
    def lights
        @lights
    end
    
    def lights_on
        @lights == 'off' ? @lights = 'on' : @lights = 'off'
        puts "Lights are #{@lights}"
    end
    
    def speed
        puts "Current speed: #{@current_speed}"
    end
    
    def faster
        @current_speed = @current_speed + @acceleration
    end
    
    def slower
        @current_speed = @current_speed - @braking
    end

    def model_year
        "{#{@model}: #{@year}}"
    end
    
end


# Story:	As a programmer, I can tell how many wheels a car has; default is four. Hint:	initialize the car to have four wheels, then create a method to return the number of wheels.

# Story:	As a programmer, I can make a Tesla car. Hint:	Create an variable called my_tesla which is of class Tesla which inherits from class Car.

class Tesla < Car
    def initialize(model, year)
        super(year)
        @year = year
        @model = model
        @acceleration = 10
        @braking = 7
    end
    
    
end

my_garage = []

my_garage << my_tesla = Tesla.new("Tesla", 2020)
my_garage << my_tesla2 = Tesla.new("Tesla", 2019)
my_tesla.details
my_tesla.wheels
my_tesla.speed
my_tesla.faster
my_tesla.speed
my_tesla.slower
my_tesla.speed

# Story:	As a programmer, I can make a Honda car.

class Honda < Car
    def initialize(model, year)
        super(year)
        @year = year
        @model = model
        @acceleration = 2
        @braking = 1.25
    end
    
end

my_garage << my_honda = Honda.new("Honda", 2018)
my_garage << my_Honda2 = Honda.new("Honda", 2017)
my_honda.details
my_honda.lights_on
my_honda.lights_on

# Story:	As a programmer, I can make a Toyota car.

class Toyota < Car
    def initialize(model, year)
        super(year)
        @year = year
        @model = model
        @acceleration = 7
        @braking = 5
    end
    
end

my_garage << my_toyota = Toyota.new("Toyota", 2016)
my_garage << my_Toyota2 = Toyota.new("Toyota", 2015)
my_toyota.details

sorted_garage = my_garage.sort_by { |elm| elm.year}.each {|e| p e.model_year}
sorted_garage = my_garage.sort_by { |elm| elm.class.to_s}.each { |el| p el.model_year}

sorted_garage = my_garage.sort_by { |e| [e.class.to_s,e.year]}.each { |e| p e.model_year}

# Story:	As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint:	Make model year part of the initialization.

# Story:	As a programmer, I can turn on and off the lights on a given Vehicle. Hint:	Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

# Story:	As a programmer, I can determine if the lights are on or off. Lights start in the off position.

# You should be able to test the car now:
# vehicle = Vehicle.new(...)
# vehicle.lights_on # should return false because they start false
# vehicle.lights_on = true # this should change the lights to true
# vehicle.lights_on # should now return true
# vehicle.lights_on = false # this should change the lights to false
# vehicle.lights_on? # should return false
# Story: As a programmer, I can signal left and right. Turn signals starts off.

# Story:	As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

# Story:	As a programmer, I can speed my Teslas up by 10 per acceleration.

# Story:	As a programmer, I can slow my Teslas down by 7 per braking.

# Story:	As a programmer, I can speed my Hondas up by 2 per acceleration.

# Story:	As a programmer, I can slow my Hondas down by 1.25 per braking.

# Story:	As a programmer, I can speed my Toyotas up by 7 per acceleration.

# Story:	As a programmer, I can slow my Toyotas down by 5 per braking.

# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

# Story:	As a programmer, I can keep a collection of two of each kind of vehicle, all from different years. Hint:	Create two of each vehicles, all from different model years, and put them into an Array.

# Story:	As a programmer, I can sort my collection of cars based on model year.

# Story:	As a programmer, I can sort my collection of cars based on model. Hint:	Sort based on class name.

# Story:	As a programmer, I can sort my collection of cars based on model and then year. Hint: Find out how the spaceship operator can help you with an array.