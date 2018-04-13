class Car
    
    attr_accessor :make, :model, :colour, :rego, :fuel
    
    def initialize(car)
       @make = car[:make]
       @model = car[:model]
       @colour = car[:colour]
       @rego = car[:rego]
       @fuel = car[:fuel]       
    end

    # Built in refuel method
    def refuel
        unless @fuel >= 100
            fuel_needed = 100 - @fuel
            @fuel = @fuel + fuel_needed # New fuel level = old fuel level + fuel_needed
        else
            puts "Car's fuel tank is already full."
        end
    end
end

# Create 3 car hashes then put them in an array
car1 =
{
    make: 'Holden',
    model: 'Commodore',
    colour: 'Grey',
    rego: 'AAA 111',
    fuel: 20
}

car2 =
{
    make: 'Toyota',
    model: 'Corolla',
    colour: 'Red',
    rego: 'BBB 222',
    fuel: 20
}

car3 =
{
    make: 'Mazda',
    model: 'RX7',
    colour: 'Pink',
    rego: 'CCC 333',
    fuel: 20
}

cars = [car1, car2, car3]

# Each car on empty
cars.each do |car|
    car[:fuel] = 0 # Set fuel level for all cars to 0
end
puts "All cars on empty"
cars.each do |car|
    puts "Rego: #{car[:rego]} Fuel level: #{car[:fuel]} " # Display fuel level for all cars to screen
end
puts ""

# Give each car a different rego & colour
puts "Give each car a different rego & colour"

puts "car1 => Old colour: #{car1[:colour]}, Old rego: #{car1[:rego]}"
car1[:colour] = 'White'
cars[0][:rego] = 'DDD 444'
puts "car1 => New colour: #{car1[:colour]}, New rego: #{car1[:rego]}"

puts "car2 => Old colour: #{car2[:colour]}, Old rego: #{car2[:rego]}"
car2[:colour] = 'Blue'
cars[1][:rego] = 'EEE 555'
puts "car2 => New colour: #{car2[:colour]}, New rego: #{car2[:rego]}"

puts "car3 => Old colour: #{car3[:colour]}, Old rego: #{car3[:rego]}"
car3[:colour] = 'Green'
cars[2][:rego] = 'FFF 666'
puts "car3 => New colour: #{car3[:colour]}, New rego: #{car3[:rego]}"
puts ""

# Loop through cars array, print colour & rego
puts "Car colour & rego loop"
num = 1 # Start with car1
cars.each do |car|
    puts "Car#{num} => Colour: #{car[:colour]}, Rego: #{car[:rego]}"
    num = num + 1 # Goto next car
end
puts ""

# Refuel cars to 100%

# .each loop version 
#cars.each do |car|
#    unless car[:fuel] >= 100
#        fuel_needed = 100 - car[:fuel]
#        car[:fuel] = car[:fuel] + fuel_needed # New fuel level = old fuel level + fuel_needed
#    else
#        puts "Car's fuel tank is already full."
#    end
#end

#refuel method version
# def refuel (car)
#     unless car[:fuel] >= 100
#         fuel_needed = 100 - car[:fuel]
#         car[:fuel] = car[:fuel] + fuel_needed # New fuel level = old fuel level + fuel_needed
#     else
#         puts "Car's fuel tank is already full."
#     end
# end

# for i in 0..2         # For loop that calls
#     refuel( cars[i] ) # refuel method
# end

# Call class method version
car_class_instances = [] # Create empty array
cars.each do |car| # Loop through array of car hashes
   temp_instance = Car.new(car) # Create temporary instance of car class using car hash
   car_class_instances.push(temp_instance) # put temporary car instance into car_class_instances array
end

puts "Fuel levels for car instances (before refuel)"
for i in 0..2
    puts "Instance #{i}: Level: #{car_class_instances[i].fuel}"
end

for i in 0..2
    car_class_instances[i].refuel
end

puts "Fuel levels for car instances (after refuel)"
for i in 0..2
    puts "Instance #{i}: Level: #{car_class_instances[i].fuel}"
end

for i in 0..2
    car_class_instances[i].refuel
end