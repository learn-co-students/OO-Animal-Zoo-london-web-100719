require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("San Fran", "zoo1")
zoo2 = Zoo.new("San Fran", "zoo2")

animal1 = Animal.new("a", 55, "giraffe")
animal2 = Animal.new("b", 54, "elephant")
animal3 = Animal.new("c", 55, "giraffe")
animal4 = Animal.new("d", 54, "elephant")
animal5 = Animal.new("e", 54, "elephant")

animal1.zoo = zoo1
animal2.zoo = zoo1
animal3.zoo = zoo2
animal4.zoo = zoo2
animal5.zoo = zoo2


binding.pry
puts "done"
