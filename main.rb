require_relative "classes/good_dog"
require_relative "classes/cat"
require_relative "classes/fish"

require "colorize"
require "http"
require "json"

sparky = GoodDog.new("Sparky", "Poodle")
ted = GoodDog.new("Ted", "Border Collie")
p sparky
p ted
puts sparky.speak.colorize(:blue)
puts ted.speak.colorize(:red)
felix = Cat.new("Felix", "Siamese")
puts felix.speak

nemo = Fish.new("Nemo", "Clownfish")
puts nemo.swim
puts ted.swim
# puts felix.swim

user = HTTP.get("https://randomuser.me/api")
user = JSON.parse(user.to_s)
puts user["results"][0]["name"]