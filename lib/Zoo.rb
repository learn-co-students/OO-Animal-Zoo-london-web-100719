class Zoo

    attr_accessor :location, :name, :animals

    @@all = []

    def initialize(location, name)
        @location = location
        @name = name
        @animals = []
        @@all << self
    end

    def self.all
        @@all
    end

    def animal_species
        animals.select{|animal| animal.species}.map{|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nicknames
        Animal.all.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select{|zoo| zoo.location == location}
    end

end
