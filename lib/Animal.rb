class Animal

    attr_reader :species, :weight, :nickname, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight 
        @nickname = nickname
        @zoo = zoo
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.find_by_species(species_arg)
        self.all.select {|x| x.species == species_arg}
    end 

end

L1 = Zoo.new("TigerHouse", "London")
N1 = Zoo.new("LionHouse", "New York")
D1 = Zoo.new("GoatHouse", "Dublin")


George = Animal.new("Tiger", 30, "Tig", L1)
Tom = Animal.new("Tiger", 12, "NotTig", L1)
Matt = Animal.new("Lion", 33, "De", N1)
Serena = Animal.new("Cheetah", 30, "Rew", N1)
Claire = Animal.new("Goat", 20, "Gi", D1)
Toby = Animal.new("Person", 67, "Zap", D1)
