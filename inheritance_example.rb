class Vehicle

  def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end


class Car < Vehicle
  # def initialize
  #   @speed = 0
  #   @direction = 'north'
  # end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end
  attr_reader :make, :model

  def initialize(input_options)
    super
    @fuel = "full"
    @make = input_options[:make]
    @model = input_options[:model]
  end


  def honk_horn
    puts "Beeeeeeep!"
  end


end

class Bike < Vehicle
  # def initialize
  #   @speed = 0
  #   @direction = 'north'
  # end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end
  attr_reader :type, :weight

  def initialize(input_options)
    super 
    @speed = 10
    @type = input_options[:type]
    @weight = input_options[:weight]
  end


  def ring_bell
    puts "Ring ring!"
  end
end

# vehicle = Vehicle.new
# p vehicle

car = Car.new(
                      make: "Honda", 
                      model: "Accord")
bike = Bike.new(
                      type: "Mountain bike", 
                      weight: 30)

# car.honk_horn
# bike.ring_bell

# p bike
# bike.turn('North by North-West')
# p bike

p car
p bike