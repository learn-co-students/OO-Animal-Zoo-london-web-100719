class Zoo

    attr_reader :name, :location, :animal

    @@all = []

    def initialize(location, name)
        @name = name
        @location = location
        Zoo.all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.select {|animal| animal.species == species}
    end

    def animal_nicknames
        animals.map {|animal| animal.name}
    end

    def self.find_by_location(location_name)
        Zoo.all.select {|zoo| zoo.location == location_name}
    end
end
