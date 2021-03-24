module Swimmable
  def swim
    return "I'm swimming!"
  end
end

class Animal
  def initialize(name, breed)
    @name = name
    @breed = breed
    @owner = nil
    @vet_visits = []
  end

  def to_s
    return "#{@name} is a #{@breed}"
  end

  def speak
    return "Hello!"
  end
end

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

class Cat < Animal
  @@number_of_cats = 0

  def initialize(name, breed)
    super(name, breed)
    @@number_of_cats += 1
  end

  #   def speak
  #     return "#{@name} says Meow!"
  #   end

end

class Fish < Animal
    include Swimmable
    include Foo
end

sparky = GoodDog.new("Sparky", "Poodle")
ted = GoodDog.new("Ted", "Border Collie")
p sparky
p ted
puts sparky.speak
puts ted.speak
# ted.name = 42  # ted.name=("Fido")
# ted.breed = "Staffy"
felix = Cat.new("Felix", "Siamese")
puts felix.speak

nemo = Fish.new("Nemo", "Clownfish")
puts nemo.swim
puts ted.swim
puts felix.swim
