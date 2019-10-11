require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


zoo1 = Zoo.new("Mediocre Zoo", "Westminster, London")
zoo2 = Zoo.new("Pretty Nice Zoo", "Not London")

cheetah = Animal.new("Cheetah", 91, "Pissy", zoo1)
zebra = Animal.new("Zebra", 439, "Michael", zoo2)
lion = Animal.new("Lion", 118, "Lyon", zoo1)
lion2 = Animal.new("Lion", 102, "Lyor", zoo1)



binding.pry
puts "done"
