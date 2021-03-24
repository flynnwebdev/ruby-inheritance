require_relative "animal"

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
