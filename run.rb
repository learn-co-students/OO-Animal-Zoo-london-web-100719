require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1=Zoo.new("Zooland", "USA")
zoo2=Zoo.new("Zoolander", "Europe")
zoo3=Zoo.new("ZooZoo", "USA")

ape1=Animal.new("Ape",25,"Joey",zoo1)
ape2=Animal.new("Ape",23,"Ann",zoo2)
lion=Animal.new("Lion",85,"Simba",zoo1)





binding.pry
puts "done"
