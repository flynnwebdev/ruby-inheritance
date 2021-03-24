require_relative "animal"
require_relative "../modules/swimmable"

class Fish < Animal
  include Swimmable
end
