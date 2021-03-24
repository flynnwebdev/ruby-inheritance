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
