require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

z1 = Zoo.new("London", "London Great Zoo")
z2 = Zoo.new("London", "London Bad Zoo")
z3 = Zoo.new("New York", "New York New Zoo")
z4 = Zoo.new("New York", "New York Monkey Zoo")

a1 = Animal.new("Monkey", 234, "Jim", z1)
a2 = Animal.new("Monkey", 244, "Tim", z2)
a3 = Animal.new("Monkey", 236, "Sim", z3)
a4 = Animal.new("Monkey", 2332, "Bim", z4)
a5 = Animal.new("Monkey", 134, "Mim", z4)
a6 = Animal.new("Monkey", 284, "Fim", z2)
a7 = Animal.new("Zebra", 254, "Dim", z1)
a8 = Animal.new("Monkey", 281, "Zim", z3)
a9 = Animal.new("Monkey", 384, "Cim", z4)
a10 = Animal.new("Monkey", 234, "Vim", z4)


binding.pry
puts "done"
