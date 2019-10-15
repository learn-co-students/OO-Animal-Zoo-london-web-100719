class Zoo

    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def animals 
        Animal.all.select {|animal| animal.zoo == self}
    end 

    def animal_species
        arr = Animals.all.select {|animal| animal.zoo == self}
        array = arr.map {|x| (x.species).to_s}
        array.uniq
    end 

    def find_by_species(species_arg)
        arr = Animals.all.select {|animal| animal.zoo == self}
        arr.select {|x| x.species == species_arg}
    end 

    def animal_nicknames
        arr = Animals.all.select {|animal| animal.zoo == self}
        arr.map {|x| x.nicknames}
    end 
end
