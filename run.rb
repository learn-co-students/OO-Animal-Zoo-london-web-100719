require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

animal1 = Animal.new("Tapir", 70, "Tim")
animal2 = Animal.new("Giraffe", 400, "Dani")
animal3 = Animal.new("Tiger", 300, "Tigroo")
animal4 = Animal.new("Giraffe", 500, "'James")
animal5 = Animal.new("Tapir", 100, "Fran")
zoo1 = Zoo.new("London Zoo", "London")
zoo2 = Zoo.new("Paris Zoo", "Paris")

animal1.zoo = zoo1
animal2.zoo = zoo1
animal3.zoo = zoo2
animal4.zoo = zoo2
animal5.zoo = zoo1

binding.pry
puts "done"
