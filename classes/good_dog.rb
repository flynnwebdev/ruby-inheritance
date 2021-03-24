require_relative "animal"
require_relative "../modules/swimmable"

class GoodDog < Animal
  attr_accessor :name
  attr_reader :breed

  include Swimmable

  @@number_of_dogs = 0

  #   def increment_total
  #     @@number_of_dogs += 1
  #   end

  def initialize(name, breed)
    super(name, breed)
    @@number_of_dogs += 1
  end

  def self.what_am_i
    return "I'm a GoodDog class!"
  end

  def self.total_dogs
    return @@number_of_dogs
  end

  def speak
    return "#{@name} says Arf!"
  end

  # # Getter for @name
  # def name
  #     return @name
  # end

  # # Setter for @name
  # def name=(name)
  #     @name = name if name.class == String
  # end

  # def breed
  #     return @breed
  # end
end
